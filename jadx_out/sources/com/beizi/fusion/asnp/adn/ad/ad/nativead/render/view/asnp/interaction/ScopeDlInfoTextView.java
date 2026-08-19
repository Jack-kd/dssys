package com.beizi.fusion.asnp.adn.ad.ad.nativead.render.view.asnp.interaction;

import android.content.Context;
import android.text.SpannableString;
import android.text.method.LinkMovementMethod;
import android.util.AttributeSet;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.nativ.down.DownloadInfoModel;
import com.beizi.fusion.dc;
import com.beizi.fusion.je;
import com.beizi.fusion.qo;

/* loaded from: classes2.dex */
public class ScopeDlInfoTextView extends ScopeInteractionTextView implements dc {

    /* renamed from: j, reason: collision with root package name */
    private DownloadInfoModel f12684j;

    /* renamed from: k, reason: collision with root package name */
    private String f12685k;

    public class a extends qo.a {

        /* renamed from: c, reason: collision with root package name */
        private final String f12686c;

        public a(String str, String str2, String str3) {
            super(str, str2);
            this.f12686c = str3;
        }

        @Override // android.text.style.ClickableSpan
        public void onClick(View view) {
            ScopeDlInfoTextView.this.f12685k = this.f12686c;
        }
    }

    public ScopeDlInfoTextView(@NonNull Context context) {
        super(context);
        this.f12685k = null;
    }

    private void b() {
        DownloadInfoModel downloadInfoModel = this.f12684j;
        if (downloadInfoModel == null || !downloadInfoModel.isConformanceByDlInfo()) {
            return;
        }
        SpannableString spannableStringA = qo.a("应用名称: " + this.f12684j.getName() + " | 开发者: " + this.f12684j.getDeveloper() + " | 应用版本: " + this.f12684j.getVersion() + " | 权限详情 | 隐私协议 | 功能介绍", new a("权限详情", "#02cbf7", "permission"), new a("隐私协议", "#02cbf7", "privacy"), new a("功能介绍", "#02cbf7", "introduction"));
        setHighlightColor(0);
        setMovementMethod(LinkMovementMethod.getInstance());
        setText(spannableStringA);
    }

    @Override // com.beizi.fusion.dc
    public void bindDownloadInfo(DownloadInfoModel downloadInfoModel) {
        this.f12684j = downloadInfoModel;
    }

    public void clearDetailActivityTab() {
        this.f12685k = null;
    }

    @Override // com.beizi.fusion.asnp.adn.ad.ad.nativead.render.view.asnp.render.ScopeTextView, com.beizi.fusion.je
    public void fillContent(je.a aVar) {
        b();
        super.fillContent(aVar);
    }

    @Override // com.beizi.fusion.asnp.adn.ad.ad.nativead.render.view.asnp.interaction.ScopeInteractionTextView, com.beizi.fusion.bd
    public String getActionType() {
        return "downloadInfo";
    }

    @Override // com.beizi.fusion.asnp.adn.ad.ad.nativead.render.view.asnp.interaction.ScopeInteractionTextView, com.beizi.fusion.bd
    public String getInteractionType() {
        return "click";
    }

    public String getWhereDetailActivityTab() {
        return this.f12685k;
    }

    public ScopeDlInfoTextView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f12685k = null;
    }

    public ScopeDlInfoTextView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f12685k = null;
    }
}
