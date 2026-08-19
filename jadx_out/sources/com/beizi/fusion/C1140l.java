package com.beizi.fusion;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import com.beizi.fusion.asnp.adn.ad.model.impl.db.AdvertCacheDBModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.db.StrategyEventDBModel;
import java.util.ArrayList;
import java.util.List;

/* renamed from: com.beizi.fusion.l, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C1140l extends na {
    public C1140l(Context context) {
        super(context);
    }

    @Override // com.beizi.fusion.na
    public void a(SQLiteDatabase sQLiteDatabase, int i2, int i3) {
    }

    @Override // com.beizi.fusion.na
    public String c() {
        return m0.a();
    }

    @Override // com.beizi.fusion.na
    public int e() {
        return 5;
    }

    @Override // com.beizi.fusion.na
    public List a() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(AdvertCacheDBModel.class);
        arrayList.add(StrategyEventDBModel.class);
        return arrayList;
    }
}
