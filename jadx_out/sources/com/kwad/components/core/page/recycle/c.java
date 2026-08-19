package com.kwad.components.core.page.recycle;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import com.kwad.sdk.mvp.Presenter;

/* loaded from: classes4.dex */
public final class c extends RecyclerView.ViewHolder {
    public final e adl;
    public final Presenter mPresenter;

    public c(View view, Presenter presenter, e eVar) {
        super(view);
        this.adl = eVar;
        this.mPresenter = presenter;
        presenter.N(view);
    }
}
