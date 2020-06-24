package com.example.cotec

import android.content.Intent
import android.graphics.Typeface
import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.view.View
import android.widget.*
import androidx.core.content.ContextCompat

class PatientActivity : AppCompatActivity() {
    private val columns = listOf("SSN","First_Name","Last_Name","Hospitalized","ICU","Age","Residence","Country_Birth","Hospital_Id","Status")
    private var inputViews = listOf<View>()
    private var currentPk:String? = null


    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_pacient)

        assignButtonFunctions()

        val data = getData()

        val table = findViewById<TableLayout>(R.id.table)
        generateTable(table,data)

        val inputContainer = findViewById<ScrollView>(R.id.inputContainer)
        generateInputs(inputContainer)

    }

    private fun onDelete (el:Map<String,Any>) {
        Toast.makeText(this,"Delete of PK ${el["SSN"]}",Toast.LENGTH_SHORT).show()
    }

    private fun onUpdate (el:Map<String,Any>) {
        currentPk = el["SSN"] as String;
        for (i in inputViews.indices){
            if (inputViews[i] is Spinner){
                val sp1:Spinner = inputViews[i] as Spinner
                sp1.setSelection(0)
            } else {
                val et1:EditText = inputViews[i] as EditText
                et1.setText(el[columns[i]].toString())
            }
        }
    }

    fun getData(): List<Map<String, Any>> {
        val data = listOf(
            mapOf(
                "SSN" to "123",
                "First_Name" to "pepito"
                ,"Last_Name" to "papu",
                "Hospitalized" to "yes",
                "ICU" to "yes",
                "Age" to 25,
                "Residence" to "Costa Rica",
                "Country_Birth" to "Spain",
                "Hospital_Id" to "1",
                "Status" to "Recuperado"),
            mapOf(
                "SSN" to "123",
                "First_Name" to "pepito"
                ,"Last_Name" to "papu",
                "Hospitalized" to "yes",
                "ICU" to "yes",
                "Age" to 25,
                "Residence" to "Costa Rica",
                "Country_Birth" to "Spain",
                "Hospital_Id" to "1",
                "Status" to "Recuperado")
        )
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

    private fun generateInputs(inputContainer:ScrollView){
        val linearLayout = LinearLayout(this)
        linearLayout.orientation = LinearLayout.VERTICAL
        for (column in columns) {
            when(column){
                "Residence" -> {
                    val sp1 = Spinner(this)
                    val options = listOf(column,"123","456","789")
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
                    val sp1:Spinner = inputViews[i] as Spinner
                    Pair(columns[i],sp1.selectedItem.toString())
                } else {
                    val et1:EditText = inputViews[i] as EditText
                    Pair(columns[i],et1.text.toString())
                }

            }
            Toast.makeText(this,"Input: $input",Toast.LENGTH_SHORT).show()
            Toast.makeText(this,"Update of PK $currentPk",Toast.LENGTH_SHORT).show()
            Toast.makeText(this,"Server: ${intent.getStringExtra("server")}",Toast.LENGTH_SHORT).show()
        }
    }
}

