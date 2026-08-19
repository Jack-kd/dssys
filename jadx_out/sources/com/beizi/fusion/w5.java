package com.beizi.fusion;

import android.app.Dialog;
import android.content.Context;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.List;
import java.util.Timer;
import java.util.TimerTask;

/* loaded from: classes2.dex */
public class w5 extends Dialog {

    /* renamed from: c, reason: collision with root package name */
    private static e f16824c;

    /* renamed from: a, reason: collision with root package name */
    private List f16825a;

    /* renamed from: b, reason: collision with root package name */
    private int f16826b;

    public static class a {

        /* renamed from: a, reason: collision with root package name */
        private RecyclerView f16827a;

        /* renamed from: b, reason: collision with root package name */
        private ImageView f16828b;

        /* renamed from: c, reason: collision with root package name */
        private TextView f16829c;

        /* renamed from: d, reason: collision with root package name */
        private RelativeLayout f16830d;

        /* renamed from: e, reason: collision with root package name */
        private RelativeLayout f16831e;

        /* renamed from: f, reason: collision with root package name */
        private EditText f16832f;

        /* renamed from: g, reason: collision with root package name */
        private TextView f16833g;

        /* renamed from: h, reason: collision with root package name */
        private Button f16834h;

        /* renamed from: i, reason: collision with root package name */
        private View f16835i;

        /* renamed from: j, reason: collision with root package name */
        private w5 f16836j;

        /* renamed from: k, reason: collision with root package name */
        private b f16837k;

        /* renamed from: l, reason: collision with root package name */
        private boolean f16838l;

        /* renamed from: com.beizi.fusion.w5$a$a, reason: collision with other inner class name */
        public class C0174a implements d {
            public C0174a() {
            }

            @Override // com.beizi.fusion.w5.d
            public void a(View view, int i2, String str) {
                a.this.a(str);
            }
        }

        public class b implements View.OnClickListener {

            /* renamed from: a, reason: collision with root package name */
            final /* synthetic */ Context f16840a;

            public b(Context context) {
                this.f16840a = context;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                a.this.f16838l = true;
                a aVar = a.this;
                aVar.a(this.f16840a, aVar.f16832f);
            }
        }

        public class c implements View.OnClickListener {

            /* renamed from: a, reason: collision with root package name */
            final /* synthetic */ Context f16842a;

            public c(Context context) {
                this.f16842a = context;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (a.this.f16838l) {
                    a.this.f16838l = false;
                    a aVar = a.this;
                    aVar.a(this.f16842a, aVar.f16832f);
                } else {
                    if (a.this.f16836j != null) {
                        a.this.f16836j.dismiss();
                    }
                    if (a.this.f16837k != null) {
                        a.this.f16837k.a();
                    }
                }
            }
        }

        public class d implements TextWatcher {

            /* renamed from: a, reason: collision with root package name */
            final /* synthetic */ Context f16844a;

            public d(Context context) {
                this.f16844a = context;
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
                String string = charSequence.toString();
                int length = charSequence.length();
                if (string.isEmpty()) {
                    a.this.f16834h.setBackground(ContextCompat.getDrawable(this.f16844a, R.drawable.beizi_complaint_button_disable_shape));
                    a.this.f16834h.setTextColor(this.f16844a.getResources().getColor(android.R.color.white));
                    a.this.f16834h.setEnabled(false);
                } else {
                    a.this.f16834h.setBackground(ContextCompat.getDrawable(this.f16844a, R.drawable.beizi_complaint_button_enable_shape));
                    a.this.f16834h.setTextColor(this.f16844a.getResources().getColor(android.R.color.black));
                    a.this.f16834h.setEnabled(true);
                }
                a.this.f16833g.setText(String.valueOf(length));
            }
        }

        public class e implements View.OnClickListener {
            public e() {
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                a.this.a(a.this.f16832f.getText().toString());
            }
        }

        public class f extends TimerTask {

            /* renamed from: a, reason: collision with root package name */
            final /* synthetic */ Context f16847a;

            /* renamed from: b, reason: collision with root package name */
            final /* synthetic */ EditText f16848b;

            public f(Context context, EditText editText) {
                this.f16847a = context;
                this.f16848b = editText;
            }

            @Override // java.util.TimerTask, java.lang.Runnable
            public void run() {
                InputMethodManager inputMethodManager = (InputMethodManager) this.f16847a.getSystemService("input_method");
                inputMethodManager.showSoftInput(this.f16848b, 2);
                inputMethodManager.toggleSoftInput(2, 1);
            }
        }

        public a(Context context) {
            this.f16836j = new w5(context, R.style.beizi_ad_custom_dialog);
            View viewInflate = ((LayoutInflater) context.getSystemService("layout_inflater")).inflate(R.layout.beizi_complaint_dialog, (ViewGroup) null, false);
            this.f16835i = viewInflate;
            this.f16836j.addContentView(viewInflate, new ViewGroup.LayoutParams(-1, -2));
            this.f16827a = (RecyclerView) this.f16835i.findViewById(R.id.dislike_reasons_list_recycleview);
            this.f16828b = (ImageView) this.f16835i.findViewById(R.id.complaint_dialog_close_view);
            this.f16829c = (TextView) this.f16835i.findViewById(R.id.complaint_other_suggest_view);
            this.f16830d = (RelativeLayout) this.f16835i.findViewById(R.id.complaint_normal_ui);
            this.f16831e = (RelativeLayout) this.f16835i.findViewById(R.id.complaint_other_suggest_layout);
            this.f16832f = (EditText) this.f16835i.findViewById(R.id.complaint_input_other_edittext);
            this.f16833g = (TextView) this.f16835i.findViewById(R.id.complaint_other_suggest_number_textview);
            this.f16834h = (Button) this.f16835i.findViewById(R.id.complaint_other_suggest_submit);
            LinearLayoutManager linearLayoutManager = new LinearLayoutManager(context);
            linearLayoutManager.setOrientation(1);
            this.f16827a.setLayoutManager(linearLayoutManager);
            w5.f16824c.a(new C0174a());
            this.f16827a.setAdapter(w5.f16824c);
            this.f16829c.setOnClickListener(new b(context));
            this.f16828b.setOnClickListener(new c(context));
            this.f16832f.addTextChangedListener(new d(context));
            this.f16834h.setOnClickListener(new e());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a(String str) {
            b bVar;
            if (!TextUtils.isEmpty(str) && (bVar = this.f16837k) != null) {
                bVar.a(str);
            }
            w5 w5Var = this.f16836j;
            if (w5Var != null) {
                w5Var.dismiss();
            }
            nh.d("BeiZisAd", str + " 被点击了");
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a(Context context, EditText editText) {
            if (this.f16838l) {
                this.f16830d.setVisibility(8);
                this.f16831e.setVisibility(0);
                a(context, true, editText);
            } else {
                this.f16830d.setVisibility(0);
                this.f16831e.setVisibility(8);
                a(context, false, editText);
            }
        }

        private void a(Context context, boolean z2, EditText editText) {
            if (z2) {
                editText.requestFocus();
                new Timer().schedule(new f(context, editText), 100L);
            } else {
                editText.clearFocus();
                ((InputMethodManager) context.getSystemService("input_method")).hideSoftInputFromWindow(editText.getWindowToken(), 0);
            }
        }

        public a a(b bVar) {
            this.f16837k = bVar;
            return this;
        }

        public w5 a() {
            this.f16836j.setContentView(this.f16835i);
            this.f16836j.setCancelable(true);
            this.f16836j.setCanceledOnTouchOutside(false);
            return this.f16836j;
        }
    }

    public interface b {
        void a();

        void a(String str);
    }

    public class c {

        /* renamed from: a, reason: collision with root package name */
        int f16850a;

        /* renamed from: b, reason: collision with root package name */
        String f16851b;

        public c() {
        }

        public void a(int i2) {
            this.f16850a = i2;
        }

        public String a() {
            return this.f16851b;
        }

        public void a(String str) {
            this.f16851b = str;
        }
    }

    public interface d {
        void a(View view, int i2, String str);
    }

    public class e extends RecyclerView.Adapter {

        /* renamed from: a, reason: collision with root package name */
        private List f16853a;

        /* renamed from: b, reason: collision with root package name */
        public d f16854b;

        public class a implements View.OnClickListener {

            /* renamed from: a, reason: collision with root package name */
            final /* synthetic */ RecyclerView.ViewHolder f16856a;

            /* renamed from: b, reason: collision with root package name */
            final /* synthetic */ String f16857b;

            public a(RecyclerView.ViewHolder viewHolder, String str) {
                this.f16856a = viewHolder;
                this.f16857b = str;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                e.this.f16854b.a(this.f16856a.itemView, this.f16856a.getLayoutPosition(), this.f16857b);
            }
        }

        public class b extends RecyclerView.ViewHolder {

            /* renamed from: a, reason: collision with root package name */
            private TextView f16859a;

            /* renamed from: b, reason: collision with root package name */
            private View f16860b;

            public b(View view) {
                super(view);
                this.f16859a = (TextView) view.findViewById(R.id.dislike_item_multi_one_title);
                this.f16860b = view.findViewById(R.id.complaint_reason_item_divider);
            }
        }

        public e(Context context, List list) {
            this.f16853a = list;
        }

        public void a(d dVar) {
            this.f16854b = dVar;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return this.f16853a.size();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i2) {
            return w5.this.f16826b;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i2) {
            String strA = ((c) this.f16853a.get(i2)).a();
            if (viewHolder instanceof b) {
                b bVar = (b) viewHolder;
                bVar.f16859a.setText(strA);
                if (this.f16853a.size() > 0 && i2 == this.f16853a.size() - 1) {
                    bVar.f16860b.setVisibility(8);
                }
            }
            if (this.f16854b != null) {
                viewHolder.itemView.setOnClickListener(new a(viewHolder, strA));
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i2) {
            return new b(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.beizi_complaint_item_multi_one, viewGroup, false));
        }
    }

    public w5(Context context, int i2) {
        super(context, i2);
        this.f16825a = null;
        this.f16826b = 1;
        List listB = b();
        this.f16825a = listB;
        f16824c = new e(context, listB);
    }

    private List b() {
        ArrayList arrayList = new ArrayList();
        String[] strArr = {"垃圾广告", "感觉有被冒犯或被歧视", "广告涉及欺诈造假", "广告涉及色情暴力", "广告涉及违禁商品/服务", "对广告内容不感兴趣"};
        for (int i2 = 0; i2 < 6; i2++) {
            String str = strArr[i2];
            c cVar = new c();
            cVar.a(str);
            cVar.a(this.f16826b);
            arrayList.add(cVar);
        }
        return arrayList;
    }
}
