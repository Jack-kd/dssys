package com.beizi.fusion;

import android.content.Context;
import android.content.Intent;
import android.view.View;
import com.beizi.fusion.asnp.adn.ad.ad.nativead.render.view.asnp.interaction.ScopeDlInfoTextView;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.nativ.NativeModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.nativ.down.DownloadInfoModel;
import com.beizi.fusion.asnp.adn.ad.widget.activity.ASNPDlInfoDetailActivity;

/* loaded from: classes2.dex */
public class h1 extends ca {
    private DownloadInfoModel b() {
        NativeModel nativeModel = this.f13233b;
        if (nativeModel == null || nativeModel.getDownloadInfo() == null) {
            return null;
        }
        return this.f13233b.getDownloadInfo();
    }

    @Override // com.beizi.fusion.fc
    public void a(View view, int i2) {
        String whereDetailActivityTab;
        if (view instanceof ScopeDlInfoTextView) {
            ScopeDlInfoTextView scopeDlInfoTextView = (ScopeDlInfoTextView) view;
            whereDetailActivityTab = scopeDlInfoTextView.getWhereDetailActivityTab();
            scopeDlInfoTextView.clearDetailActivityTab();
        } else {
            whereDetailActivityTab = null;
        }
        DownloadInfoModel downloadInfoModelB = b();
        if (downloadInfoModelB != null) {
            a(view.getContext(), downloadInfoModelB, whereDetailActivityTab);
        }
    }

    private void a(Context context, DownloadInfoModel downloadInfoModel, String str) {
        Intent intent = new Intent(context, (Class<?>) ASNPDlInfoDetailActivity.class);
        intent.putExtra("dlm", downloadInfoModel.toJsonString());
        intent.putExtra("whichTab", str);
        zf.c(context, intent);
    }
}
