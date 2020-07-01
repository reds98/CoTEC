package com.example.cotec

import android.content.Intent
import android.database.sqlite.SQLiteDatabase
import android.graphics.Typeface
import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.view.View
import android.widget.*
import androidx.core.content.ContextCompat

class ContactActivity : AppCompatActivity() {
    private val columns = listOf("Id","SSN","Patient_SSN","First_Name","Last_Name","Address","Email","Age")
    private var inputViews = listOf<View>()
    private var currentPk:String? = null

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_contact)

        assignButtonFunctions()

        val data = getData()

        val table = findViewById<TableLayout>(R.id.table)
        generateTable(table,data)

        val inputContainer = findViewById<ScrollView>(R.id.inputContainer)
        generateInputs(inputContainer)
    }

    private fun onDelete (el:Map<String,Any>) {
        Toast.makeText(this,"Delete of PK ${el["Id"]}", Toast.LENGTH_SHORT).show()
    }

    private fun onUpdate (el:Map<String,Any>) {
        currentPk = el["SSN"] as String;
        for (i in inputViews.indices){
            if (inputViews[i] is Spinner){
                val sp1: Spinner = inputViews[i] as Spinner
                sp1.setSelection(0)
            } else {
                val et1: EditText = inputViews[i] as EditText
                et1.setText(el[columns[i]].toString())
            }
        }
    }

    private fun getData(): List<Map<String, Any>> {
        val data = mutableListOf<Map<String,String>>()
        val admin = AdminSQLiteOpenHelper(this)
        val DB: SQLiteDatabase = admin.writableDatabase
        try{
            val cursor = DB.rawQuery("Select * from Contacted_Person",null)
            while (cursor.moveToNext()){
                val row = mutableMapOf<String,String>()
                for ((i, column) in columns.withIndex()){
                    row[column] = cursor.getString(i);
                }
                data.add(row);
            }

        }
        catch (e:Exception){
            Toast.makeText(this,e.toString(),Toast.LENGTH_LONG).show()
        }
        return data
    }

    private fun generateTable(table: TableLayout, data:List<Map<String, Any>>){
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

    private fun generateInputs(inputContainer: ScrollView){
        val linearLayout = LinearLayout(this)
        linearLayout.orientation = LinearLayout.VERTICAL

        val patientSsns = getForeignKeys("Patients")

        for (column in columns) {
            when(column){
                "Id" -> {
                }
                "Patient_SSN" -> {
                    val options = mutableListOf<String>(column)
                    options += patientSsns

                    val sp1 = Spinner(this)
                    val adapter = ArrayAdapter(this,android.R.layout.simple_spinner_item,options)
                    sp1.adapter = adapter
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
                    val sp1: Spinner = inputViews[i] as Spinner
                    Pair(columns[i],sp1.selectedItem.toString())
                } else {
                    val et1: EditText = inputViews[i] as EditText
                    Pair(columns[i],et1.text.toString())
                }

            }
            Toast.makeText(this,"Input: $input", Toast.LENGTH_SHORT).show()
            Toast.makeText(this,"Update of PK $currentPk", Toast.LENGTH_SHORT).show()
            Toast.makeText(this,"Server: ${intent.getStringExtra("server")}", Toast.LENGTH_SHORT).show()
        }
    }
}