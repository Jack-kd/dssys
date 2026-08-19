package com.beizi.fusion.asnp.adn.ad.publish.ad.unified.view;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import androidx.annotation.Nullable;
import com.beizi.fusion.ff;
import com.beizi.fusion.gm;
import com.beizi.fusion.op;

/* loaded from: classes2.dex */
public class ASNPUnifiedMediaView extends FrameLayout {
    public ASNPUnifiedMediaView(Context context) {
        super(context);
    }

    public ff getMediaController() {
        getTag(gm.a(getContext(), "scope_unified_media_ctrl"));
        return null;
    }

    public void setMediaConfig(op opVar) {
        setTag(gm.a(getContext(), "scope_unified_media_config"), opVar);
    }

    public ASNPUnifiedMediaView(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public ASNPUnifiedMediaView(Context context, @Nullable AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
    }

    public ASNPUnifiedMediaView(Context context, @Nullable AttributeSet attributeSet, int i2, int i3) {
        super(context, attributeSet, i2, i3);
    }
}
