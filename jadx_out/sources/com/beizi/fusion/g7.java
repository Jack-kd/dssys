package com.beizi.fusion;

import android.app.Dialog;
import android.content.Context;
import android.graphics.Point;
import android.graphics.Rect;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.TextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.beizi.fusion.widget.dialog.dislike.FlowLayoutManager;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes2.dex */
public class g7 extends Dialog {

    /* renamed from: d, reason: collision with root package name */
    private static h f14019d;

    /* renamed from: a, reason: collision with root package name */
    private List f14020a;

    /* renamed from: b, reason: collision with root package name */
    private int f14021b;

    /* renamed from: c, reason: collision with root package name */
    private int f14022c;

    public static class a {

        /* renamed from: a, reason: collision with root package name */
        private RecyclerView f14023a;

        /* renamed from: b, reason: collision with root package name */
        private View f14024b;

        /* renamed from: c, reason: collision with root package name */
        private g7 f14025c;

        /* renamed from: d, reason: collision with root package name */
        private c f14026d;

        /* renamed from: com.beizi.fusion.g7$a$a, reason: collision with other inner class name */
        public class C0160a implements e {
            public C0160a() {
            }

            @Override // com.beizi.fusion.g7.e
            public void a(View view, int i2) {
                if (a.this.f14025c != null) {
                    a.this.f14025c.dismiss();
                }
                if (a.this.f14026d != null) {
                    a.this.f14026d.a();
                }
            }
        }

        public a(Context context) {
            this.f14025c = new g7(context, R.style.beizi_custom_dialog);
            View viewInflate = ((LayoutInflater) context.getSystemService("layout_inflater")).inflate(R.layout.beizi_dislike_dialog, (ViewGroup) null, false);
            this.f14024b = viewInflate;
            this.f14025c.addContentView(viewInflate, new ViewGroup.LayoutParams(-1, -2));
            this.f14023a = (RecyclerView) this.f14024b.findViewById(R.id.beizi_dislike_reasons_list_recycleview);
            LinearLayoutManager linearLayoutManager = new LinearLayoutManager(context);
            linearLayoutManager.setOrientation(1);
            this.f14023a.setLayoutManager(linearLayoutManager);
            g7.f14019d.a(new C0160a());
            this.f14023a.setAdapter(g7.f14019d);
            WindowManager.LayoutParams attributes = this.f14025c.getWindow().getAttributes();
            this.f14025c.getWindow().getWindowManager().getDefaultDisplay().getSize(new Point());
            attributes.width = (int) (r0.x * 0.85d);
            attributes.gravity = 17;
            this.f14025c.getWindow().setAttributes(attributes);
        }

        public a a(c cVar) {
            this.f14026d = cVar;
            return this;
        }

        public g7 a() {
            this.f14025c.setContentView(this.f14024b);
            this.f14025c.setCancelable(true);
            this.f14025c.setCanceledOnTouchOutside(true);
            return this.f14025c;
        }
    }

    public class b {

        /* renamed from: a, reason: collision with root package name */
        int f14028a;

        /* renamed from: b, reason: collision with root package name */
        String f14029b;

        /* renamed from: c, reason: collision with root package name */
        List f14030c;

        public b() {
        }

        public void a(List list) {
            this.f14030c = list;
        }

        public List b() {
            return this.f14030c;
        }

        public void a(int i2) {
            this.f14028a = i2;
        }

        public String a() {
            return this.f14029b;
        }

        public void a(String str) {
            this.f14029b = str;
        }
    }

    public interface c {
        void a();
    }

    public class d {

        /* renamed from: a, reason: collision with root package name */
        String f14032a;

        public d() {
        }

        public String a() {
            return this.f14032a;
        }

        public void a(String str) {
            this.f14032a = str;
        }
    }

    public interface e {
        void a(View view, int i2);
    }

    public interface f {
        void a(View view, int i2);
    }

    public class g extends RecyclerView.Adapter {

        /* renamed from: a, reason: collision with root package name */
        private List f14034a;

        /* renamed from: b, reason: collision with root package name */
        private Context f14035b;

        /* renamed from: c, reason: collision with root package name */
        private f f14036c;

        public class a implements View.OnClickListener {

            /* renamed from: a, reason: collision with root package name */
            final /* synthetic */ int f14038a;

            public a(int i2) {
                this.f14038a = i2;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (g.this.f14036c != null) {
                    g.this.f14036c.a(view, this.f14038a);
                }
            }
        }

        public class b extends RecyclerView.ViewHolder {

            /* renamed from: a, reason: collision with root package name */
            TextView f14040a;

            public b(View view) {
                super(view);
                this.f14040a = (TextView) view.findViewById(R.id.beizi_dislike_item_multi_two_recycleview_item);
            }
        }

        public g(Context context, List list) {
            this.f14035b = context;
            this.f14034a = list;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return this.f14034a.size();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i2) {
            b bVar = (b) viewHolder;
            bVar.f14040a.setText(((d) this.f14034a.get(i2)).a());
            yn.a(bVar.itemView, "#FFFAF6F6", 0, "", 10);
            bVar.itemView.setOnClickListener(new a(i2));
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i2) {
            return new b(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.beizi_dislike_item_multi_two_recycle_item, viewGroup, false));
        }

        public void a(f fVar) {
            this.f14036c = fVar;
        }
    }

    public class h extends RecyclerView.Adapter {

        /* renamed from: a, reason: collision with root package name */
        private Context f14042a;

        /* renamed from: b, reason: collision with root package name */
        private List f14043b;

        /* renamed from: c, reason: collision with root package name */
        public e f14044c;

        public class a implements f {
            public a() {
            }

            @Override // com.beizi.fusion.g7.f
            public void a(View view, int i2) {
                e eVar = h.this.f14044c;
                if (eVar != null) {
                    eVar.a(view, i2);
                }
            }
        }

        public class b extends RecyclerView.ItemDecoration {
            public b() {
            }

            @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
            public void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, RecyclerView.State state) {
                super.getItemOffsets(rect, view, recyclerView, state);
                rect.bottom = 30;
                rect.left = 60;
            }
        }

        public class c implements View.OnClickListener {

            /* renamed from: a, reason: collision with root package name */
            final /* synthetic */ RecyclerView.ViewHolder f14048a;

            public c(RecyclerView.ViewHolder viewHolder) {
                this.f14048a = viewHolder;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                int layoutPosition = this.f14048a.getLayoutPosition();
                if (g7.this.f14022c != h.this.getItemViewType(layoutPosition)) {
                    h.this.f14044c.a(this.f14048a.itemView, layoutPosition);
                }
            }
        }

        public class d extends RecyclerView.ViewHolder {

            /* renamed from: a, reason: collision with root package name */
            private TextView f14050a;

            public d(View view) {
                super(view);
                this.f14050a = (TextView) view.findViewById(R.id.beizi_dislike_item_multi_one_title);
            }
        }

        public class e extends RecyclerView.ViewHolder {

            /* renamed from: a, reason: collision with root package name */
            private TextView f14052a;

            /* renamed from: b, reason: collision with root package name */
            private RecyclerView f14053b;

            public e(View view) {
                super(view);
                this.f14052a = (TextView) view.findViewById(R.id.beizi_dislike_item_multi_two_title);
                this.f14053b = (RecyclerView) view.findViewById(R.id.beizi_dislike_item_multi_two_recycleview);
            }
        }

        public h(Context context, List list) {
            this.f14042a = context;
            this.f14043b = list;
        }

        public void a(e eVar) {
            this.f14044c = eVar;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return this.f14043b.size();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i2) {
            return (((b) this.f14043b.get(i2)).b() == null || ((b) this.f14043b.get(i2)).b().size() <= 0) ? g7.this.f14021b : g7.this.f14022c;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i2) {
            if (viewHolder instanceof d) {
                ((d) viewHolder).f14050a.setText(((b) this.f14043b.get(i2)).a());
            } else {
                e eVar = (e) viewHolder;
                eVar.f14052a.setText(((b) this.f14043b.get(i2)).a());
                eVar.f14053b.setLayoutManager(new FlowLayoutManager());
                g7 g7Var = g7.this;
                g gVar = g7Var.new g(g7Var.getContext(), ((b) this.f14043b.get(i2)).b());
                eVar.f14053b.setAdapter(gVar);
                gVar.a(new a());
                eVar.f14053b.addItemDecoration(new b());
            }
            if (this.f14044c != null) {
                viewHolder.itemView.setOnClickListener(new c(viewHolder));
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i2) {
            return i2 == g7.this.f14021b ? new d(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.beizi_dislike_item_multi_one, viewGroup, false)) : new e(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.beizi_dislike_item_multi_two, viewGroup, false));
        }
    }

    public g7(Context context, int i2) {
        super(context, i2);
        this.f14020a = null;
        this.f14021b = 1;
        this.f14022c = 2;
        List listB = b();
        this.f14020a = listB;
        f14019d = new h(context, listB);
    }

    private List b() {
        ArrayList arrayList = new ArrayList();
        b bVar = new b();
        bVar.a("内容无法正常展示（卡顿、黑白屏）");
        bVar.a(this.f14021b);
        arrayList.add(bVar);
        b bVar2 = new b();
        bVar2.a("不感兴趣");
        bVar2.a(this.f14021b);
        arrayList.add(bVar2);
        b bVar3 = new b();
        bVar3.a("无法关闭");
        bVar3.a(this.f14021b);
        arrayList.add(bVar3);
        ArrayList arrayList2 = new ArrayList();
        d dVar = new d();
        dVar.a("疑似抄袭");
        arrayList2.add(dVar);
        d dVar2 = new d();
        dVar2.a("虚假欺诈");
        arrayList2.add(dVar2);
        d dVar3 = new d();
        dVar3.a("违法违规");
        arrayList2.add(dVar3);
        d dVar4 = new d();
        dVar4.a("低俗色情");
        arrayList2.add(dVar4);
        b bVar4 = new b();
        bVar4.a("举报广告");
        bVar4.a(arrayList2);
        bVar4.a(this.f14021b);
        arrayList.add(bVar4);
        return arrayList;
    }
}
