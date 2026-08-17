package com.byazt.ruu;

import android.app.Dialog;
import android.view.View;
import android.widget.Adapter;
import android.widget.AdapterView;
import android.widget.ListView;
import com.byazt.qt.a;
import java.lang.reflect.Field;
import java.util.function.Function;

@com.byazt.kj.hp(hp = {0, 1, 695, 34})
/* loaded from: classes3.dex */
public class l {
    public final com.byazt.bl.l hp;

    /* renamed from: l, reason: collision with root package name */
    public hp f25386l;

    public interface hp {
        void hp(a aVar);
    }

    @com.byazt.kj.hp(hp = {0, 1, 695, 1376})
    /* renamed from: com.byazt.ruu.l$l, reason: collision with other inner class name */
    public static final class C0364l implements AdapterView.OnItemClickListener {
        public final l hp;

        /* renamed from: l, reason: collision with root package name */
        public final AdapterView.OnItemClickListener f25387l;

        private com.byazt.bl.jx hp(Object obj) throws IllegalAccessException, SecurityException, IllegalArgumentException {
            Object obj2;
            if (obj == null) {
                return null;
            }
            Field[] declaredFields = obj.getClass().getDeclaredFields();
            for (int i2 = 0; i2 < declaredFields.length; i2++) {
                try {
                    declaredFields[i2].setAccessible(true);
                    obj2 = declaredFields[i2].get(obj);
                } catch (Exception unused) {
                }
                if (obj2 instanceof a) {
                    return new com.byazt.bl.jx(((a) obj2).getId(), ((a) obj2).getName());
                }
                continue;
            }
            return null;
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i2, long j2) throws IllegalAccessException, SecurityException, IllegalArgumentException {
            Adapter adapter = adapterView.getAdapter();
            if (adapter != null) {
                Object item = adapter.getItem(i2);
                if (item instanceof Function) {
                    this.hp.hp(hp(item));
                }
            }
            AdapterView.OnItemClickListener onItemClickListener = this.f25387l;
            if (onItemClickListener != null) {
                onItemClickListener.onItemClick(adapterView, view, i2, j2);
            }
        }

        private C0364l(AdapterView.OnItemClickListener onItemClickListener, l lVar) {
            this.hp = lVar;
            this.f25387l = onItemClickListener;
        }
    }

    public l(com.byazt.bl.l lVar) {
        this.hp = lVar;
    }

    public void hp(a aVar) {
        if (this.hp != null && aVar != null) {
            com.byazt.ruu.hp.hp().hp(this.hp, aVar);
        }
        hp hpVar = this.f25386l;
        if (hpVar != null) {
            hpVar.hp(aVar);
        }
    }

    public static final void hp(com.byazt.bl.l lVar, Dialog dialog, Integer[] numArr) {
        hp(lVar, dialog, numArr, null);
    }

    public static final void hp(com.byazt.bl.l lVar, Dialog dialog, Integer[] numArr, hp hpVar) {
        if (numArr == null || numArr.length <= 0) {
            return;
        }
        l lVar2 = new l(lVar);
        lVar2.f25386l = hpVar;
        for (Integer num : numArr) {
            View viewFindViewById = dialog.findViewById(num.intValue());
            if (viewFindViewById instanceof ListView) {
                ListView listView = (ListView) viewFindViewById;
                listView.setOnItemClickListener(new C0364l(listView.getOnItemClickListener(), lVar2));
            }
        }
    }
}
