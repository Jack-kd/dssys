package com.beizi.fusion;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.Color;
import android.os.Handler;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

/* loaded from: classes2.dex */
public class zm extends Dialog {

    /* renamed from: a, reason: collision with root package name */
    private b f17906a;

    /* renamed from: b, reason: collision with root package name */
    private RelativeLayout f17907b;

    /* renamed from: c, reason: collision with root package name */
    private RecyclerView f17908c;

    /* renamed from: d, reason: collision with root package name */
    private ImageView f17909d;

    /* renamed from: e, reason: collision with root package name */
    private TextView f17910e;

    /* renamed from: f, reason: collision with root package name */
    private TextView f17911f;

    /* renamed from: g, reason: collision with root package name */
    private RelativeLayout f17912g;

    /* renamed from: h, reason: collision with root package name */
    private RelativeLayout f17913h;

    /* renamed from: i, reason: collision with root package name */
    private EditText f17914i;

    /* renamed from: j, reason: collision with root package name */
    private TextView f17915j;

    /* renamed from: k, reason: collision with root package name */
    private TextView f17916k;

    public class a implements TextWatcher {
        public a() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
            if (charSequence != null) {
                zm.this.a(!charSequence.toString().isEmpty());
                zm.this.f17915j.setText(String.valueOf(charSequence.length()));
            } else {
                zm.this.a(false);
                zm.this.f17915j.setText("0");
            }
        }
    }

    public static class b {

        /* renamed from: a, reason: collision with root package name */
        private final Context f17918a;

        /* renamed from: b, reason: collision with root package name */
        private e f17919b;

        public b(Context context) {
            this.f17918a = context;
        }

        public b a(e eVar) {
            this.f17919b = eVar;
            return this;
        }

        public Dialog a() {
            return new zm(this, (a) null);
        }
    }

    public static class c extends RecyclerView.Adapter {

        /* renamed from: a, reason: collision with root package name */
        private final Context f17920a;

        /* renamed from: b, reason: collision with root package name */
        private final String[] f17921b;

        /* renamed from: c, reason: collision with root package name */
        private f f17922c;

        public /* synthetic */ c(Context context, a aVar) {
            this(context);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            String[] strArr = this.f17921b;
            if (strArr != null) {
                return strArr.length;
            }
            return 0;
        }

        private c(Context context) {
            this.f17920a = context;
            this.f17921b = context.getResources().getStringArray(R.array.complain_list);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(final d dVar, int i2) {
            String[] strArr = this.f17921b;
            if (strArr == null || strArr.length <= 0) {
                return;
            }
            final String str = strArr[i2];
            dVar.f17923a.setText(str);
            dVar.f17923a.setTextColor(Color.parseColor(ip.a().a("#000000")));
            if (i2 == this.f17921b.length - 1) {
                dVar.f17924b.setVisibility(8);
            }
            dVar.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.beizi.fusion.E0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f12527b.a(dVar, str, view);
                }
            });
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public d onCreateViewHolder(ViewGroup viewGroup, int i2) {
            return new d(View.inflate(this.f17920a, R.layout.asnp_complain_item_multi_one, null));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a(f fVar) {
            this.f17922c = fVar;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a(d dVar, String str, View view) {
            f fVar = this.f17922c;
            if (fVar != null) {
                fVar.a(view, dVar.getLayoutPosition(), str);
            }
        }
    }

    public static class d extends RecyclerView.ViewHolder {

        /* renamed from: a, reason: collision with root package name */
        private final TextView f17923a;

        /* renamed from: b, reason: collision with root package name */
        private final View f17924b;

        public d(View view) {
            super(view);
            this.f17923a = (TextView) view.findViewById(R.id.complain_item_multi_one_title);
            this.f17924b = view.findViewById(R.id.complain_reason_item_divider);
        }
    }

    public interface e extends DialogInterface.OnDismissListener, DialogInterface.OnCancelListener, DialogInterface.OnShowListener {
        void a(String str);
    }

    public interface f {
        void a(View view, int i2, String str);
    }

    public /* synthetic */ zm(b bVar, a aVar) {
        this(bVar);
    }

    private void f() {
        this.f17909d.setOnClickListener(new View.OnClickListener() { // from class: com.beizi.fusion.C0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f12522b.b(view);
            }
        });
        this.f17916k.setOnClickListener(new View.OnClickListener() { // from class: com.beizi.fusion.D0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f12524b.c(view);
            }
        });
    }

    private void g() {
        if (this.f17912g.getVisibility() == 0) {
            this.f17912g.setVisibility(8);
            this.f17913h.setVisibility(0);
            c(this.f17914i);
        } else {
            this.f17912g.setVisibility(0);
            this.f17913h.setVisibility(8);
            a(this.f17914i);
        }
    }

    private zm(b bVar) {
        this(bVar.f17918a, R.style.adscope_complaint_dialog);
        this.f17906a = bVar;
    }

    private void b() {
        View viewInflate = View.inflate(getContext(), R.layout.asnp_complain_dialog, null);
        addContentView(viewInflate, new ViewGroup.LayoutParams(-1, -2));
        this.f17907b = (RelativeLayout) viewInflate.findViewById(R.id.complain_dialog_container_rl);
        this.f17908c = (RecyclerView) viewInflate.findViewById(R.id.complain_reasons_list_recycleview);
        this.f17909d = (ImageView) viewInflate.findViewById(R.id.complain_dialog_close_view);
        this.f17910e = (TextView) viewInflate.findViewById(R.id.complain_other_suggest_view);
        this.f17911f = (TextView) viewInflate.findViewById(R.id.complain_other_suggest_title);
        this.f17912g = (RelativeLayout) viewInflate.findViewById(R.id.complain_normal_ui);
        this.f17913h = (RelativeLayout) viewInflate.findViewById(R.id.complain_other_suggest_layout);
        this.f17914i = (EditText) viewInflate.findViewById(R.id.complain_input_other_edittext);
        this.f17915j = (TextView) viewInflate.findViewById(R.id.complain_other_suggest_number_textview);
        this.f17916k = (TextView) viewInflate.findViewById(R.id.complain_other_suggest_submit);
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(getContext());
        linearLayoutManager.setOrientation(1);
        this.f17908c.setLayoutManager(linearLayoutManager);
        try {
            d();
        } catch (Exception unused) {
        }
    }

    private void c() {
        c cVar = new c(getContext(), null);
        cVar.a(new f() { // from class: com.beizi.fusion.B0
            @Override // com.beizi.fusion.zm.f
            public final void a(View view, int i2, String str) {
                this.f12514a.a(view, i2, str);
            }
        });
        this.f17908c.setAdapter(cVar);
    }

    private void d() {
        try {
            if (ip.a().b()) {
                this.f17907b.setBackground(AppCompatResources.getDrawable(getContext(), R.drawable.asnp_complaint_dialog_shape_black));
            } else {
                this.f17907b.setBackground(AppCompatResources.getDrawable(getContext(), R.drawable.asnp_complaint_dialog_shape));
            }
            this.f17910e.setHintTextColor(Color.parseColor(ip.a().a("#666666")));
            this.f17914i.setHintTextColor(Color.parseColor(ip.a().a("#0A0A0A")));
            this.f17914i.setTextColor(Color.parseColor(ip.a().a("#000000")));
            this.f17911f.setTextColor(Color.parseColor(ip.a().a("#000000")));
            xn.a(getContext(), this.f17916k, ip.a().a("#B4B4B4"), 0, "", 10);
            xn.a(getContext(), this.f17914i, ip.a().a("#F3F3F3"), 0, "", 3);
        } catch (Exception e2) {
            rm.a(e2);
        }
    }

    private void e() {
        this.f17910e.setOnClickListener(new View.OnClickListener() { // from class: com.beizi.fusion.A0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f12512b.a(view);
            }
        });
        this.f17914i.addTextChangedListener(new a());
    }

    private zm(Context context, int i2) {
        super(context, i2);
        b();
        c();
        e();
        f();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(View view, int i2, String str) {
        a(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(View view) {
        g();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void c(View view) {
        a(this.f17914i.getText().toString());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(boolean z2) {
        String str;
        int i2;
        if (z2) {
            str = "#3380FF";
            i2 = -16777216;
        } else {
            str = "#B4B4B4";
            i2 = -1;
        }
        xn.a(getContext(), this.f17916k, str, 0, "", 10);
        this.f17916k.setTextColor(i2);
        this.f17916k.setEnabled(z2);
    }

    private void c(final EditText editText) {
        editText.requestFocus();
        new Handler().postDelayed(new Runnable() { // from class: com.beizi.fusion.Z
            @Override // java.lang.Runnable
            public final void run() {
                this.f12562b.b(editText);
            }
        }, 100L);
    }

    private void a(EditText editText) {
        editText.clearFocus();
        ((InputMethodManager) getContext().getSystemService("input_method")).hideSoftInputFromWindow(editText.getWindowToken(), 0);
    }

    private void a(String str) {
        if (this.f17906a.f17919b != null) {
            this.f17906a.f17919b.a(str);
        }
        a();
    }

    private void a() {
        if (isShowing()) {
            dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(View view) {
        if (this.f17913h.getVisibility() == 4) {
            g();
        } else {
            a();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(EditText editText) {
        InputMethodManager inputMethodManager = (InputMethodManager) getContext().getSystemService("input_method");
        inputMethodManager.showSoftInput(editText, 2);
        inputMethodManager.toggleSoftInput(2, 1);
    }
}
