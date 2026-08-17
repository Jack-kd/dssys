package com.beizi.fusion.asnp.adn.ad.ad.nativead.render.view.asnp.interaction;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.beizi.fusion.R;
import com.beizi.fusion.asnp.adn.ad.ad.nativead.render.view.asnp.prefab.ScopeExpressContainer;
import com.beizi.fusion.asnp.adn.ad.ad.nativead.render.view.asnp.render.ScopeVideoView;
import com.beizi.fusion.je;

/* loaded from: classes2.dex */
public class ScopeMuteView extends ScopeInteractionImageView {

    /* renamed from: m, reason: collision with root package name */
    private ScopeVideoView f12710m;

    public ScopeMuteView(@NonNull Context context) {
        super(context);
    }

    private void a(ViewGroup viewGroup) {
        if (viewGroup == null || viewGroup.getChildCount() <= 0) {
            return;
        }
        for (int i2 = 0; i2 < viewGroup.getChildCount(); i2++) {
            View childAt = viewGroup.getChildAt(i2);
            if (childAt instanceof ScopeVideoView) {
                this.f12710m = (ScopeVideoView) childAt;
            } else if (childAt instanceof ViewGroup) {
                a((ViewGroup) childAt);
            }
        }
    }

    @Override // com.beizi.fusion.asnp.adn.ad.ad.nativead.render.view.asnp.render.ScopeImageView, com.beizi.fusion.je
    public void fillContent(je.a aVar) {
        f();
        super.fillContent(aVar);
    }

    public void switchVideoVoice() {
        ScopeVideoView scopeVideoView = this.f12710m;
        if (scopeVideoView != null) {
            scopeVideoView.switchVoice(new ScopeVideoView.e() { // from class: com.beizi.fusion.asnp.adn.ad.ad.nativead.render.view.asnp.interaction.a
                @Override // com.beizi.fusion.asnp.adn.ad.ad.nativead.render.view.asnp.render.ScopeVideoView.e
                public final void a(boolean z2) {
                    this.f12737a.a(z2);
                }
            });
        }
    }

    public ScopeMuteView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    private void f() {
        ScopeExpressContainer expressRoot = getExpressRoot();
        if (expressRoot != null) {
            ScopeVideoView scopeVideoViewE = ScopeExpressContainer.d.e(expressRoot);
            if (scopeVideoViewE != null) {
                this.f12710m = scopeVideoViewE;
            } else if (expressRoot.getChildCount() > 0) {
                a(expressRoot);
            }
        }
    }

    public ScopeMuteView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(boolean z2) {
        if (z2) {
            setImageResource(R.drawable.asnp_voice_off);
        } else {
            setImageResource(R.drawable.asnp_voice_on);
        }
    }
}
