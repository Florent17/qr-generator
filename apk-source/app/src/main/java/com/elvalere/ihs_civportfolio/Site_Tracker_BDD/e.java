package com.elvalere.ihs_civportfolio.Site_Tracker_BDD;

import android.content.Intent;
import android.view.View;
import android.widget.AdapterView;
import android.widget.TextView;
import com.elvalere.ihs_civportfolio.R;

/* loaded from: classes.dex */
class e implements AdapterView.OnItemClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ TodoListActivity f365a;

    e(TodoListActivity todoListActivity) {
        this.f365a = todoListActivity;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView adapterView, View view, int i, long j) {
        TextView textView = (TextView) view.findViewById(R.id.id);
        TextView textView2 = (TextView) view.findViewById(R.id.siteid);
        TextView textView3 = (TextView) view.findViewById(R.id.sitename);
        TextView textView4 = (TextView) view.findViewById(R.id.dates);
        TextView textView5 = (TextView) view.findViewById(R.id.comments);
        String charSequence = textView.getText().toString();
        String charSequence2 = textView2.getText().toString();
        String charSequence3 = textView3.getText().toString();
        String charSequence4 = textView4.getText().toString();
        String charSequence5 = textView5.getText().toString();
        Intent intent = new Intent(this.f365a.getApplicationContext(), (Class<?>) ModifyTodoActivity.class);
        intent.putExtra("id", charSequence);
        intent.putExtra("siteid", charSequence2);
        intent.putExtra("sitename", charSequence3);
        intent.putExtra("dates", charSequence4);
        intent.putExtra("comments", charSequence5);
        this.f365a.startActivity(intent);
    }
}
