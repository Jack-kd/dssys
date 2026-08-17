package com.sigmob.sdk.mraid;

import android.os.Bundle;
import android.text.TextUtils;
import com.czhj.wire.okio.ByteString;
import com.sigmob.sdk.base.common.AbstractC1285y;
import com.sigmob.sdk.base.common.C1258h;
import com.sigmob.sdk.base.common.EnumC1270n;
import com.sigmob.sdk.base.common.InterfaceC1274p;
import com.sigmob.sdk.base.models.BaseAdUnit;
import com.sigmob.sdk.base.models.rtb.MaterialMeta;
import com.sigmob.sdk.mraid2.C1324b;
import com.sigmob.sdk.mraid2.C1327e;
import java.util.List;

/* renamed from: com.sigmob.sdk.mraid.i, reason: case insensitive filesystem */
/* loaded from: classes4.dex */
public class C1317i extends AbstractC1285y {
    public C1317i(InterfaceC1274p interfaceC1274p) {
        super(interfaceC1274p);
    }

    public static boolean c(BaseAdUnit baseAdUnit) {
        if (baseAdUnit == null) {
            return false;
        }
        return (baseAdUnit.getMaterial() == null || TextUtils.isEmpty(baseAdUnit.getCrid())) ? false : true;
    }

    @Override // com.sigmob.sdk.base.common.AbstractC1285y
    public void a(InterfaceC1274p interfaceC1274p) {
        this.f36054a = interfaceC1274p;
    }

    @Override // com.sigmob.sdk.base.common.AbstractC1285y
    public void a(BaseAdUnit baseAdUnit, Bundle bundle) {
        List<BaseAdUnit> listE;
        if (baseAdUnit.getCreativeType() == EnumC1270n.CreativeTypeMRAIDTWO.a() && (listE = C1258h.e(baseAdUnit.getUuid())) == null) {
            C1324b.a().a(baseAdUnit.getUuid(), new C1327e(com.sigmob.sdk.b.e(), listE));
        }
        super.a(baseAdUnit, bundle);
    }

    @Override // com.sigmob.sdk.base.common.AbstractC1285y
    public boolean a(BaseAdUnit baseAdUnit) {
        return c(baseAdUnit);
    }

    public static boolean a(MaterialMeta materialMeta) {
        if (materialMeta.creative_type.intValue() != EnumC1270n.CreativeTypeMRAID.a()) {
            return false;
        }
        if (!TextUtils.isEmpty(materialMeta.html_url)) {
            return true;
        }
        ByteString byteString = materialMeta.html_snippet;
        return byteString != null && byteString.size() > 10;
    }
}
