package com.baidu.mobads.sdk.internal.concrete;

import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;
import com.baidu.mobads.sdk.api.IAdInterListener;
import com.baidu.mobads.sdk.internal.a.a;
import com.baidu.mobads.sdk.internal.a.b;
import com.baidu.mobads.sdk.internal.a.c;
import com.baidu.mobads.sdk.internal.widget.ViewPager2;
import java.util.Map;

/* loaded from: classes2.dex */
public class RVAdapterDelegate extends RecyclerView.Adapter<RVViewHolderDelegate> implements a {

    /* renamed from: a, reason: collision with root package name */
    private final c f11368a;

    /* renamed from: b, reason: collision with root package name */
    private final b f11369b;

    public RVAdapterDelegate(@NonNull IAdInterListener iAdInterListener) {
        this.f11368a = c.a(iAdInterListener, this);
        registerAdapterDataObserver(new ViewPager2.DataSetChangeObserver() { // from class: com.baidu.mobads.sdk.internal.concrete.RVAdapterDelegate.1
            @Override // com.baidu.mobads.sdk.internal.widget.ViewPager2.DataSetChangeObserver, androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
            public void onChanged() {
                RVAdapterDelegate.this.f11368a.a("onChanged");
            }
        });
        this.f11369b = new b();
    }

    @Override // com.baidu.mobads.sdk.api.IOAdEvent
    public int getCode() {
        return this.f11368a.getCode();
    }

    @Override // com.baidu.mobads.sdk.api.IOAdEvent
    public Map<String, Object> getData() {
        return this.f11368a.getData();
    }

    @Override // com.baidu.mobads.sdk.internal.a.a
    @NonNull
    public IAdInterListener getDelegator() {
        return this.f11368a.getDelegator();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        Object objA = this.f11368a.a("getItemCount", new Object[0]);
        if (objA instanceof Integer) {
            return ((Integer) objA).intValue();
        }
        return 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public long getItemId(int i2) {
        return this.f11368a.a("getItemId", Integer.valueOf(i2)) instanceof Integer ? ((Integer) r0).intValue() : super.getItemId(i2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int i2) {
        Object objA = this.f11368a.a("getItemType", Integer.valueOf(i2));
        return objA instanceof Integer ? ((Integer) objA).intValue() : super.getItemViewType(i2);
    }

    @Override // com.baidu.mobads.sdk.api.IOAdEvent
    public String getMessage() {
        return this.f11368a.getMessage();
    }

    @Override // com.baidu.mobads.sdk.api.IOAdEvent
    public Object getTarget() {
        return this.f11368a.getTarget();
    }

    @Override // com.baidu.mobads.sdk.api.IOAdEvent
    public String getType() {
        return this.f11368a.getType();
    }

    @Override // com.baidu.mobads.sdk.internal.a.a
    public Object handleEvent(String str, String str2, Object[] objArr) {
        if ("notifyItemChanged".equals(str2)) {
            notifyItemChanged(this.f11369b.a(objArr, 0, 0), this.f11369b.a(objArr, 1, (Object) null));
        } else if ("notifyRangeInserted".equals(str2)) {
            notifyItemRangeInserted(this.f11369b.a(objArr, 0, 0), this.f11369b.a(objArr, 1, 0));
        } else if ("notifyRangeRemoved".equals(str2)) {
            notifyItemRangeRemoved(this.f11369b.a(objArr, 0, 0), this.f11369b.a(objArr, 1, 0));
        } else if ("notifyItemRangeChanged".equals(str2)) {
            notifyItemRangeChanged(this.f11369b.a(objArr, 0, 0), this.f11369b.a(objArr, 1, 0));
        } else if ("notifyDataSetChanged".equals(str2)) {
            notifyDataSetChanged();
        }
        return null;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onAttachedToRecyclerView(@NonNull RecyclerView recyclerView) {
        super.onAttachedToRecyclerView(recyclerView);
        this.f11368a.a("onAttachedToRecyclerView", recyclerView);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onDetachedFromRecyclerView(@NonNull RecyclerView recyclerView) {
        super.onDetachedFromRecyclerView(recyclerView);
        this.f11368a.a("onDetachedFromRecyclerView", recyclerView);
    }

    @Override // com.baidu.mobads.sdk.api.IOAdEvent
    public void setTarget(Object obj) {
        this.f11368a.setTarget(obj);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(@NonNull RVViewHolderDelegate rVViewHolderDelegate, int i2) {
        this.f11368a.a("onBindViewHolder", rVViewHolderDelegate.getDelegator(), Integer.valueOf(i2));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    public RVViewHolderDelegate onCreateViewHolder(@NonNull ViewGroup viewGroup, int i2) {
        Object objA = this.f11368a.a("onCreateViewHolder", viewGroup, Integer.valueOf(i2));
        return objA instanceof RVViewHolderDelegate ? (RVViewHolderDelegate) objA : new RVViewHolderDelegate(this.f11368a.getDelegator(), viewGroup) { // from class: com.baidu.mobads.sdk.internal.concrete.RVAdapterDelegate.2
        };
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public boolean onFailedToRecycleView(@NonNull RVViewHolderDelegate rVViewHolderDelegate) {
        Object objA = this.f11368a.a("onFailedToRecycleView", rVViewHolderDelegate.getDelegator());
        return objA instanceof Boolean ? ((Boolean) objA).booleanValue() : super.onFailedToRecycleView((RVAdapterDelegate) rVViewHolderDelegate);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onViewAttachedToWindow(@NonNull RVViewHolderDelegate rVViewHolderDelegate) {
        super.onViewAttachedToWindow((RVAdapterDelegate) rVViewHolderDelegate);
        this.f11368a.a("onViewAttachedToWindow", rVViewHolderDelegate.getDelegator());
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onViewDetachedFromWindow(@NonNull RVViewHolderDelegate rVViewHolderDelegate) {
        super.onViewDetachedFromWindow((RVAdapterDelegate) rVViewHolderDelegate);
        this.f11368a.a("onViewDetachedFromWindow", rVViewHolderDelegate.getDelegator());
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onViewRecycled(@NonNull RVViewHolderDelegate rVViewHolderDelegate) {
        super.onViewRecycled((RVAdapterDelegate) rVViewHolderDelegate);
        this.f11368a.a("onViewRecycled", rVViewHolderDelegate.getDelegator());
    }
}
