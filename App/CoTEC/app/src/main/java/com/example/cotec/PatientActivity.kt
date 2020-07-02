package com.example.cotec

import android.content.ContentValues
import android.content.Intent
import android.database.sqlite.SQLiteDatabase
import android.graphics.Typeface
import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.util.Log
import android.view.View
import android.widget.*
import androidx.core.content.ContextCompat

class PatientActivity : AppCompatActivity() {
    private val columns = listOf("SSN","First_Name","Last_Name","Hospitalized","ICU","Age","Residence","Country_Birth","Hospital_Id","Status","Pathologies","Medications")
    private var inputViews = listOf<View>()
    private var currentPk:String? = null

    private var PathologiesTextView:TextView? = null
    private var MedicationsTextView:TextView? = null

    private var countries = mutableListOf<String>()
    private var hospitals = mutableListOf<String>()
    private var status = mutableListOf<String>()
    private var pathologies = mutableListOf<String>()
    private var medications = mutableListOf<String>()

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_pacient)

        assignButtonFunctions()

        PathologiesTextView = TextView(this).apply { text="Patologías: " }
        MedicationsTextView = TextView(this).apply { text="Medicaciones: " }

        countries = getForeignKeys("Countries")
        hospitals = getForeignKeys("Hospitals")
        status = getForeignKeys("Patient_Status")
        pathologies = getForeignKeys("Pathologies")
        medications = getForeignKeys("Medications")

        val data = getData()

        val table = findViewById<TableLayout>(R.id.table)
        generateTable(table,data)

        val inputContainer = findViewById<ScrollView>(R.id.inputContainer)
        generateInputs(inputContainer)

    }

    /**
     *
     */
    private fun onDelete (el:Map<String,Any>) {
        val SSN = el["SSN"] as String

        val admin = AdminSQLiteOpenHelper(this)
        val DB: SQLiteDatabase = admin.writableDatabase
        val deletedRows = DB.delete("Patients", "SSN LIKE ?",arrayOf(SSN))
        Toast.makeText(this,"Deleted rows: $deletedRows",Toast.LENGTH_LONG).show()

        val int1 = Intent(this,PatientActivity::class.java)
        int1.putExtra("server",intent.getStringExtra("server"))
        startActivity(int1)
    }

    private fun onUpdate (el:Map<String,Any>) {
        currentPk = el["SSN"] as String
        for (i in inputViews.indices){
            if (inputViews[i] is Spinner){
                val sp1:Spinner = inputViews[i] as Spinner
                val text = el[columns[i]].toString()
                var index = 0
                when(columns[i]){
                    "Residence" -> {
                        index = countries.indexOf(text)+1
                    }
                    "Country_Birth" -> {
                        index = countries.indexOf(text)+1
                    }
                    "Hospital_Id" -> {
                        index = hospitals.indexOf(text)+1
                    }
                    "Status" -> {
                        index = status.indexOf(text)+1
                    }
                }
                sp1.setSelection(index)

            } else {
                val et1:EditText = inputViews[i] as EditText
                et1.setText(el[columns[i]].toString())
            }
        }
        PathologiesTextView?.text = "Patologías: ${el["Pathologies"]}"
        MedicationsTextView?.text = "Medicaciones: ${el["Medications"]}"
    }

    private fun getData(): List<Map<String, Any>> {
        val data = mutableListOf<Map<String,String>>()
        val admin = AdminSQLiteOpenHelper(this)
        val DB: SQLiteDatabase = admin.writableDatabase
        try{
            val cursor = DB.rawQuery("Select * from Patients",null)
            while (cursor.moveToNext()){
                val row = mutableMapOf<String,String>()
                for ((i, column) in columns.withIndex()){
                    when(column){
                        "Medications" ->{
                            row[column] = "";
                            val cursorTmp = DB.rawQuery("SELECT Medications.Name FROM Patient_Medications\n" +
                                    "INNER JOIN Patients\n" +
                                    "ON Patients.SSN=Patient_Medications.Patient_SSN\n" +
                                    "INNER JOIN Medications\n" +
                                    "ON Medications.Id=Patient_Medications.Medication_Id\n" +
                                    "WHERE SSN = ${row["SSN"]};",null)

                            while (cursorTmp.moveToNext()){
                                row[column] += "${cursorTmp.getString(0)}, "
                            }
                        }
                        "Pathologies" ->{
                            row[column] = "";
                            val cursorTmp = DB.rawQuery("SELECT Pathologies.Name FROM Patient_Pathologies\n" +
                                    "INNER JOIN Patients\n" +
                                    "ON Patients.SSN=Patient_Pathologies.Patient_SSN\n" +
                                    "INNER JOIN Pathologies\n" +
                                    "ON Pathologies.Name=Patient_Pathologies.Pathology_Name\n" +
                                    "WHERE SSN = ${row["SSN"]};",null)

                            while (cursorTmp.moveToNext()){
                                row[column] += "${cursorTmp.getString(0)}, "
                            }
                        }
                        else -> {
                            row[column] = cursor.getString(i);
                        }
                    }

                }
                data.add(row);
            }
            DB.close()

        }
        catch (e:Exception){
            Toast.makeText(this,e.toString(),Toast.LENGTH_LONG).show()
        }
        return data
    }

    private fun generateTable(table:TableLayout, data:List<Map<String, Any>>){
        val headers = TableRow(this)
        for (column in columns){
            val tv1 = TextView(this).apply {
                text = " $column "
                background = ContextCompat.getDrawable(context, R.drawable.border)
            }
            tv1.typeface = (Typeface.DEFAULT_BOLD)
            headers.addView(tv1)
        }
        table.addView(headers)

        for (el in data){
            val row = TableRow(this)
            for (column in columns){
                val tv1 = TextView(this).apply {
                    text = " ${el[column].toString()} "
                    background = ContextCompat.getDrawable(context, R.drawable.border)
                }
                row.addView(tv1)
            }
            val btn1 = Button(this)
            btn1.text = "Delete"
            btn1.setOnClickListener { onDelete(el) }
            val btn2 = Button(this)
            btn2.text = "Update"
            btn2.setOnClickListener { onUpdate(el) }
            row.addView(btn1)
            row.addView(btn2)
            table.addView(row)
        }
    }

    private fun getForeignKeys(table:String): MutableList<String> {
        val options = mutableListOf<String>()
        val admin = AdminSQLiteOpenHelper(this)
        val DB: SQLiteDatabase = admin.writableDatabase
        try{
            val cursor = DB.rawQuery("Select * from $table",null)
            while (cursor.moveToNext()){
                options.add(cursor.getString(0));
            }
            DB.close()
        }
        catch (e:Exception){
            Toast.makeText(this,e.toString(),Toast.LENGTH_LONG).show()
        }
        return options
    }

    private fun generateInputs(inputContainer:ScrollView){
        val linearLayout = LinearLayout(this)
        linearLayout.apply {
            background = ContextCompat.getDrawable(context, R.drawable.border)
            orientation = LinearLayout.VERTICAL
        }

        for (column in columns) {
            when(column){
                "Residence" -> {
                    val options = mutableListOf<String>(column)
                    options += countries

                    val sp1 = Spinner(this)
                    val adapter = ArrayAdapter(this,android.R.layout.simple_spinner_item,options)
                    sp1.adapter = adapter
                    linearLayout.addView(sp1)
                    inputViews = inputViews + sp1
                }
                "Country_Birth" -> {
                    val options = mutableListOf<String>(column)
                    options += countries

                    val sp1 = Spinner(this)
                    val adapter = ArrayAdapter(this,android.R.layout.simple_spinner_item,options)
                    sp1.adapter = adapter
                    linearLayout.addView(sp1)
                    inputViews = inputViews + sp1
                }
                "Hospital_Id" -> {
                    val options = mutableListOf<String>(column)
                    options += hospitals

                    val sp1 = Spinner(this)
                    val adapter = ArrayAdapter(this,android.R.layout.simple_spinner_item,options)
                    sp1.adapter = adapter
                    linearLayout.addView(sp1)
                    inputViews = inputViews + sp1
                }
                "Status" -> {
                    val options = mutableListOf<String>(column)
                    options += status

                    val sp1 = Spinner(this)
                    val adapter = ArrayAdapter(this,android.R.layout.simple_spinner_item,options)
                    sp1.adapter = adapter
                    linearLayout.addView(sp1)
                    inputViews = inputViews + sp1
                }
                "Pathologies" -> {
                    val options = mutableListOf<String>(column)
                    options += pathologies

                    val sp1 = Spinner(this)
                    val adapter = ArrayAdapter(this,android.R.layout.simple_spinner_item,options)
                    sp1.adapter = adapter

                    val context = this

                    sp1.onItemSelectedListener = object :
                        AdapterView.OnItemSelectedListener {
                        override fun onItemSelected(parent: AdapterView<*>,
                                                    view: View, position: Int, id: Long) {
                            if (position!=0){
                                if (currentPk==null){
                                    Toast.makeText(context,"Por favor introduzca SSN de un paciente que exista",Toast.LENGTH_LONG).show()
                                }
                                else{
                                    val admin = AdminSQLiteOpenHelper(context)
                                    val DB: SQLiteDatabase = admin.writableDatabase
                                    val values = ContentValues()
                                    values.put("Patient_SSN",currentPk)
                                    values.put("Pathology_Name",pathologies[position-1])
                                    val newRowId = DB.insert("Patient_Pathologies", null, values)
                                    Toast.makeText(context, "Nueva patología: $newRowId",Toast.LENGTH_LONG).show()
                                    val int1 = Intent(context,PatientActivity::class.java)
                                    int1.putExtra("server",intent.getStringExtra("server"))
                                    startActivity(int1)
                                }
                            }
                            sp1.setSelection(0)
                        }

                        override fun onNothingSelected(parent: AdapterView<*>) {
                            // write code to perform some action
                        }
                    }

                    linearLayout.addView(PathologiesTextView)
                    linearLayout.addView(sp1)
                    inputViews = inputViews + sp1
                }
                "Medications" -> {
                    val options = mutableListOf<String>(column)
                    options += medications

                    val sp1 = Spinner(this)
                    val adapter = ArrayAdapter(this,android.R.layout.simple_spinner_item,options)
                    sp1.adapter = adapter

                    val context = this

                    sp1.onItemSelectedListener = object :
                        AdapterView.OnItemSelectedListener {
                        override fun onItemSelected(parent: AdapterView<*>,
                                                    view: View, position: Int, id: Long) {
                            if (position!=0){
                                if (currentPk==null){
                                    Toast.makeText(context,"Por favor introduzca SSN de un paciente que exista",Toast.LENGTH_LONG).show()
                                }
                                else{
                                    val admin = AdminSQLiteOpenHelper(context)
                                    val DB: SQLiteDatabase = admin.writableDatabase
                                    val values = ContentValues()
                                    values.put("Patient_SSN",currentPk)
                                    values.put("Medication_Id",medications[position-1])
                                    val newRowId = DB.insert("Patient_Medications", null, values)
                                    Toast.makeText(context, "Nueva medicamento: $newRowId",Toast.LENGTH_LONG).show()
                                    val int1 = Intent(context,PatientActivity::class.java)
                                    int1.putExtra("server",intent.getStringExtra("server"))
                                    startActivity(int1)
                                }
                            }
                            sp1.setSelection(0)
                        }

                        override fun onNothingSelected(parent: AdapterView<*>) {
                            // write code to perform some action
                        }
                    }

                    linearLayout.addView(MedicationsTextView)
                    linearLayout.addView(sp1)
                    inputViews = inputViews + sp1
                }
                else -> {
                    val et1 = EditText(this)
                    et1.hint = column
                    linearLayout.addView(et1)
                    inputViews = inputViews + et1
                }
            }
        }
        inputContainer.addView(linearLayout)
    }

    private fun assignButtonFunctions(){
        findViewById<Button>(R.id.btnPacient).setOnClickListener {
            val int1 = Intent(this,PatientActivity::class.java)
            int1.putExtra("server",intent.getStringExtra("server"))
            startActivity(int1)
        }

        findViewById<Button>(R.id.btnContact).setOnClickListener {
            val int1 = Intent(this,ContactActivity::class.java)
            int1.putExtra("server",intent.getStringExtra("server"))
            startActivity(int1)
        }

        findViewById<Button>(R.id.btnConfirm).setOnClickListener {
            val input: MutableMap<String, String> = mutableMapOf()
            for (i in inputViews.indices){
                input += if (inputViews[i] is Spinner){
                    val sp1:Spinner = inputViews[i] as Spinner
                    Pair(columns[i],sp1.selectedItem.toString())
                } else {
                    val et1:EditText = inputViews[i] as EditText
                    Pair(columns[i],et1.text.toString())
                }

            }

            if (input["Residence"] == "Residence") {input["Residence"] = ""}
            if (input["Country_Birth"] == "Country_Birth") {input["Country_Birth"] = ""}
            if (input["Hospital_Id"] == "Hospital_Id") {input["Hospital_Id"] = ""}
            if (input["Status"] == "Status") {input["Status"] = ""}

            if (input["SSN"]==""){
                Toast.makeText(this,"Debe llenar al menos el campo SSN",Toast.LENGTH_SHORT).show()
                return@setOnClickListener
            }

            val admin = AdminSQLiteOpenHelper(this)
            val DB: SQLiteDatabase = admin.writableDatabase
            val values = ContentValues();
            for (column in columns){
                if (column in listOf("Pathologies","Medications")){

                }
                else{
                    values.put(column,input[column])
                }
            }

            if (currentPk == null){
                try {
                    val newRowId = DB.insert("Patients", null, values)
                    Toast.makeText(this,"values: $newRowId",Toast.LENGTH_SHORT).show()
                }
                catch (e:Exception){
                    Toast.makeText(this,"ERROR: $e",Toast.LENGTH_SHORT).show()
                }
            }
            else{
                try {
                    val count = DB.update(
                        "Patients",
                        values,
                        "SSN LIKE ?",
                        arrayOf(currentPk))

                    Toast.makeText(this,"values: $count",Toast.LENGTH_SHORT).show()
                }
                catch (e:Exception){
                    Toast.makeText(this,"ERROR: $e",Toast.LENGTH_SHORT).show()
                }
            }


            Toast.makeText(this,"Input: $input",Toast.LENGTH_SHORT).show()
            Toast.makeText(this,"Update of PK $currentPk",Toast.LENGTH_SHORT).show()
            Toast.makeText(this,"Server: ${intent.getStringExtra("server")}",Toast.LENGTH_SHORT).show()

            val int1 = Intent(this,PatientActivity::class.java)
            int1.putExtra("server",intent.getStringExtra("server"))
            startActivity(int1)
        }
    }
}

