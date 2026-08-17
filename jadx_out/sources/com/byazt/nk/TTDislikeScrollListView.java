package com.byazt.nk;

import android.content.Context;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ListView;
import com.byazt.kj.hp;
import com.byazt.qt.a;
import com.byazt.ruu.l;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_SET_ORIGINAL_RETRY, 2452})
/* loaded from: classes3.dex */
public class TTDislikeScrollListView extends ListView {
    public l hp;
    public AdapterView.OnItemClickListener jx;

    /* renamed from: l, reason: collision with root package name */
    public AdapterView.OnItemClickListener f23654l;

    public TTDislikeScrollListView(Context context) {
        super(context);
        this.jx = new AdapterView.OnItemClickListener() { // from class: com.byazt.nk.TTDislikeScrollListView.1
            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> adapterView, View view, int i2, long j2) {
                if (TTDislikeScrollListView.this.getAdapter() == null || TTDislikeScrollListView.this.getAdapter().getItem(i2) == null || !(TTDislikeScrollListView.this.getAdapter().getItem(i2) instanceof a)) {
                    throw new IllegalArgumentException("adapter数据异常，必须为FilterWord");
                }
                a aVar = (a) TTDislikeScrollListView.this.getAdapter().getItem(i2);
                if (aVar.hasSecondOptions()) {
                    return;
                }
                if (TTDislikeScrollListView.this.f23654l != null) {
                    TTDislikeScrollListView.this.f23654l.onItemClick(adapterView, view, i2, j2);
                }
                if (TTDislikeScrollListView.this.hp != null) {
                    TTDislikeScrollListView.this.hp.hp(aVar);
                }
            }
        };
        hp();
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.view.View
    public void onMeasure(int i2, int i3) {
        super.onMeasure(i2, View.MeasureSpec.makeMeasureSpec(536870911, Integer.MIN_VALUE));
    }

    public void setDislikeController(l lVar) {
        this.hp = lVar;
    }

    @Override // android.widget.AdapterView
    public void setOnItemClickListener(AdapterView.OnItemClickListener onItemClickListener) {
        this.f23654l = onItemClickListener;
    }

    private void hp() {
        super.setOnItemClickListener(this.jx);
    }
}
