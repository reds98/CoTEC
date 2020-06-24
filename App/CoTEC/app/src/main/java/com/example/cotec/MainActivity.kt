package com.example.cotec

import android.content.Intent
import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.widget.Button
import android.widget.EditText
import android.widget.Toast

class MainActivity : AppCompatActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)

        val et1 = findViewById<EditText>(R.id.et1);
        val btn1 = findViewById<Button>(R.id.btn1);

        btn1.setOnClickListener(){
            val server = et1.text.toString();
            val int1 = Intent(this, PatientActivity::class.java)
            int1.putExtra("server", server);
            Toast.makeText(this,server,Toast.LENGTH_SHORT).show();
            startActivity(int1)

        }
    }

}
