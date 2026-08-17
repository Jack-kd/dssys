package com.beizi.fusion;

import android.content.Context;
import android.graphics.Color;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseExpandableListAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.beizi.ad.internal.download.BeiZiWebView;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes2.dex */
public class y3 extends BaseExpandableListAdapter {

    /* renamed from: a, reason: collision with root package name */
    private Context f17645a;

    /* renamed from: b, reason: collision with root package name */
    private List f17646b;

    public class a {

        /* renamed from: a, reason: collision with root package name */
        TextView f17647a;

        /* renamed from: b, reason: collision with root package name */
        BeiZiWebView f17648b;

        public a() {
        }
    }

    public class b {

        /* renamed from: a, reason: collision with root package name */
        TextView f17650a;

        /* renamed from: b, reason: collision with root package name */
        ImageView f17651b;

        /* renamed from: c, reason: collision with root package name */
        View f17652c;

        public b() {
        }
    }

    public y3(Context context, List list) {
        ArrayList arrayList = new ArrayList();
        this.f17646b = arrayList;
        this.f17645a = context;
        arrayList.clear();
        this.f17646b.addAll(list);
    }

    @Override // android.widget.ExpandableListAdapter
    public Object getChild(int i2, int i3) {
        return ((z7) this.f17646b.get(i2)).a();
    }

    @Override // android.widget.ExpandableListAdapter
    public long getChildId(int i2, int i3) {
        return i3;
    }

    @Override // android.widget.ExpandableListAdapter
    public View getChildView(int i2, int i3, boolean z2, View view, ViewGroup viewGroup) {
        View viewInflate = LayoutInflater.from(this.f17645a).inflate(R.layout.beizi_download_dialog_expand_child_item, (ViewGroup) null);
        a aVar = new a();
        aVar.f17647a = (TextView) viewInflate.findViewById(R.id.beizi_addeci_content_tv);
        aVar.f17648b = (BeiZiWebView) viewInflate.findViewById(R.id.beizi_addeci_content_wb);
        viewInflate.setTag(aVar);
        if (com.baidu.mobads.sdk.internal.a.f10878b.equals(((z7) this.f17646b.get(i2)).b())) {
            aVar.f17647a.setVisibility(0);
            aVar.f17648b.setVisibility(8);
            aVar.f17647a.setText(((z7) this.f17646b.get(i2)).a());
            return viewInflate;
        }
        if ("h5".equals(((z7) this.f17646b.get(i2)).b())) {
            aVar.f17647a.setVisibility(8);
            aVar.f17648b.setVisibility(0);
            aVar.f17648b.loadUrl(((z7) this.f17646b.get(i2)).a(), f9.a());
        }
        return viewInflate;
    }

    @Override // android.widget.ExpandableListAdapter
    public int getChildrenCount(int i2) {
        return 1;
    }

    @Override // android.widget.ExpandableListAdapter
    public Object getGroup(int i2) {
        return this.f17646b.get(i2);
    }

    @Override // android.widget.ExpandableListAdapter
    public int getGroupCount() {
        return this.f17646b.size();
    }

    @Override // android.widget.ExpandableListAdapter
    public long getGroupId(int i2) {
        return i2;
    }

    @Override // android.widget.ExpandableListAdapter
    public View getGroupView(int i2, boolean z2, View view, ViewGroup viewGroup) {
        b bVar;
        if (view == null) {
            view = LayoutInflater.from(this.f17645a).inflate(R.layout.beizi_download_dialog_expand_parent_item, (ViewGroup) null);
            bVar = new b();
            bVar.f17650a = (TextView) view.findViewById(R.id.beizi_addep_title_tv);
            bVar.f17651b = (ImageView) view.findViewById(R.id.beizi_addep_fold_iv);
            bVar.f17652c = view.findViewById(R.id.beizi_addep_item_divider_view);
            view.setTag(bVar);
        } else {
            bVar = (b) view.getTag();
        }
        bVar.f17650a.setText(((z7) this.f17646b.get(i2)).c());
        if (z2) {
            bVar.f17650a.setTextColor(Color.parseColor("#FF8E15"));
            bVar.f17651b.setBackgroundResource(R.mipmap.beizi_icon_arrow_unfold);
        } else {
            bVar.f17650a.setTextColor(Color.parseColor("#333333"));
            bVar.f17651b.setBackgroundResource(R.mipmap.beizi_icon_arrow_fold);
        }
        if (i2 == 0) {
            bVar.f17652c.setVisibility(8);
            return view;
        }
        bVar.f17652c.setVisibility(0);
        return view;
    }

    @Override // android.widget.ExpandableListAdapter
    public boolean hasStableIds() {
        return false;
    }

    @Override // android.widget.ExpandableListAdapter
    public boolean isChildSelectable(int i2, int i3) {
        return false;
    }
}
