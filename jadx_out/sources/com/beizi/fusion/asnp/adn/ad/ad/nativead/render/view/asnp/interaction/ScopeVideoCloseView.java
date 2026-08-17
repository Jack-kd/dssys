package com.beizi.fusion.asnp.adn.ad.ad.nativead.render.view.asnp.interaction;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.AttributeSet;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.beizi.fusion.asnp.adn.ad.ad.nativead.render.view.asnp.prefab.ScopeExpressContainer;
import com.beizi.fusion.wb;

/* loaded from: classes2.dex */
public class ScopeVideoCloseView extends ScopeInteractionTextView implements wb {

    /* renamed from: j, reason: collision with root package name */
    private Handler f12735j;

    public class a extends Handler {
        public a(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            super.handleMessage(message);
            if (message.what == 50) {
                ScopeVideoCloseView.this.setVisibility(0);
            }
        }
    }

    public ScopeVideoCloseView(@NonNull Context context) {
        super(context);
    }

    @Override // com.beizi.fusion.wb
    public void delayExposure(long j2) {
        if (j2 < 0) {
            setVisibility(8);
        } else if (j2 > 0) {
            setVisibility(4);
            if (this.f12735j == null) {
                this.f12735j = new a(getContext().getMainLooper());
            }
            this.f12735j.sendEmptyMessageDelayed(50, j2);
        }
    }

    @Override // com.beizi.fusion.asnp.adn.ad.ad.nativead.render.view.asnp.render.ScopeTextView, com.beizi.fusion.je
    public void setExpressRoot(ScopeExpressContainer scopeExpressContainer) {
        super.setExpressRoot(scopeExpressContainer);
        ScopeExpressContainer.d.a(scopeExpressContainer, (wb) this);
    }

    public ScopeVideoCloseView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public ScopeVideoCloseView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
    }
}
