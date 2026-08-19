package h1;

import android.database.sqlite.SQLiteProgram;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

/* renamed from: h1.D, reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1431D {

    /* renamed from: a, reason: collision with root package name */
    public final String f50735a;

    /* renamed from: b, reason: collision with root package name */
    public final List f50736b;

    public C1431D(String str, List list) {
        this.f50735a = str;
        this.f50736b = list == null ? new ArrayList() : list;
    }

    public static Object f(Object obj) {
        if (obj == null) {
            return null;
        }
        if (!(obj instanceof List)) {
            return obj;
        }
        List list = (List) obj;
        byte[] bArr = new byte[list.size()];
        for (int i2 = 0; i2 < list.size(); i2++) {
            bArr[i2] = (byte) ((Integer) list.get(i2)).intValue();
        }
        return bArr;
    }

    public void a(SQLiteProgram sQLiteProgram) {
        List list = this.f50736b;
        if (list != null) {
            int size = list.size();
            int i2 = 0;
            while (i2 < size) {
                Object objF = f(this.f50736b.get(i2));
                int i3 = i2 + 1;
                if (objF == null) {
                    sQLiteProgram.bindNull(i3);
                } else if (objF instanceof byte[]) {
                    sQLiteProgram.bindBlob(i3, (byte[]) objF);
                } else if (objF instanceof Double) {
                    sQLiteProgram.bindDouble(i3, ((Double) objF).doubleValue());
                } else if (objF instanceof Integer) {
                    sQLiteProgram.bindLong(i3, ((Integer) objF).intValue());
                } else if (objF instanceof Long) {
                    sQLiteProgram.bindLong(i3, ((Long) objF).longValue());
                } else if (objF instanceof String) {
                    sQLiteProgram.bindString(i3, (String) objF);
                } else {
                    if (!(objF instanceof Boolean)) {
                        throw new IllegalArgumentException("Could not bind " + objF + " from index " + i2 + ": Supported types are null, byte[], double, long, boolean and String");
                    }
                    sQLiteProgram.bindLong(i3, ((Boolean) objF).booleanValue() ? 1L : 0L);
                }
                i2 = i3;
            }
        }
    }

    public List b() {
        return this.f50736b;
    }

    public String c() {
        return this.f50735a;
    }

    public Object[] d() {
        return e(this.f50736b);
    }

    public final Object[] e(List list) {
        ArrayList arrayList = new ArrayList();
        if (list != null) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(f(it.next()));
            }
        }
        return arrayList.toArray(new Object[0]);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof C1431D)) {
            return false;
        }
        C1431D c1431d = (C1431D) obj;
        String str = this.f50735a;
        if (str != null) {
            if (!str.equals(c1431d.f50735a)) {
                return false;
            }
        } else if (c1431d.f50735a != null) {
            return false;
        }
        if (this.f50736b.size() != c1431d.f50736b.size()) {
            return false;
        }
        for (int i2 = 0; i2 < this.f50736b.size(); i2++) {
            if ((this.f50736b.get(i2) instanceof byte[]) && (c1431d.f50736b.get(i2) instanceof byte[])) {
                if (!Arrays.equals((byte[]) this.f50736b.get(i2), (byte[]) c1431d.f50736b.get(i2))) {
                    return false;
                }
            } else if (!this.f50736b.get(i2).equals(c1431d.f50736b.get(i2))) {
                return false;
            }
        }
        return true;
    }

    public int hashCode() {
        String str = this.f50735a;
        if (str != null) {
            return str.hashCode();
        }
        return 0;
    }

    public String toString() {
        String str;
        StringBuilder sb = new StringBuilder();
        sb.append(this.f50735a);
        List list = this.f50736b;
        if (list == null || list.isEmpty()) {
            str = "";
        } else {
            str = " " + this.f50736b;
        }
        sb.append(str);
        return sb.toString();
    }
}
