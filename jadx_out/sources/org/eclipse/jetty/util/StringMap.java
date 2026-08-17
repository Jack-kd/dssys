package org.eclipse.jetty.util;

import java.io.Externalizable;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.util.AbstractMap;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

/* loaded from: classes5.dex */
public class StringMap extends AbstractMap implements Externalizable {
    public static final boolean CASE_INSENSTIVE = true;
    protected static final int __HASH_WIDTH = 17;
    protected HashSet _entrySet;
    protected boolean _ignoreCase;
    protected c _nullEntry;
    protected Object _nullValue;
    protected b _root;
    protected Set _umEntrySet;
    protected int _width;

    public static class b implements Map.Entry {

        /* renamed from: b, reason: collision with root package name */
        public char[] f52605b;

        /* renamed from: c, reason: collision with root package name */
        public char[] f52606c;

        /* renamed from: d, reason: collision with root package name */
        public b f52607d;

        /* renamed from: e, reason: collision with root package name */
        public b[] f52608e;

        /* renamed from: f, reason: collision with root package name */
        public String f52609f;

        /* renamed from: g, reason: collision with root package name */
        public Object f52610g;

        public b() {
        }

        public b a(StringMap stringMap, int i2) {
            b bVar = new b();
            char[] cArr = this.f52605b;
            int length = cArr.length - i2;
            this.f52605b = new char[i2];
            bVar.f52605b = new char[length];
            System.arraycopy(cArr, 0, this.f52605b, 0, i2);
            System.arraycopy(cArr, i2, bVar.f52605b, 0, length);
            char[] cArr2 = this.f52606c;
            if (cArr2 != null) {
                this.f52606c = new char[i2];
                bVar.f52606c = new char[length];
                System.arraycopy(cArr2, 0, this.f52606c, 0, i2);
                System.arraycopy(cArr2, i2, bVar.f52606c, 0, length);
            }
            bVar.f52609f = this.f52609f;
            bVar.f52610g = this.f52610g;
            this.f52609f = null;
            this.f52610g = null;
            if (stringMap._entrySet.remove(this)) {
                stringMap._entrySet.add(bVar);
            }
            bVar.f52608e = this.f52608e;
            int i3 = stringMap._width;
            b[] bVarArr = new b[i3];
            this.f52608e = bVarArr;
            bVarArr[bVar.f52605b[0] % i3] = bVar;
            char[] cArr3 = bVar.f52606c;
            if (cArr3 != null) {
                char c2 = cArr3[0];
                if (bVarArr[c2 % i3] != bVar) {
                    bVarArr[c2 % i3] = bVar;
                }
            }
            return bVar;
        }

        public final void b(StringBuilder sb) {
            sb.append("{[");
            if (this.f52605b != null) {
                int i2 = 0;
                while (true) {
                    char[] cArr = this.f52605b;
                    if (i2 >= cArr.length) {
                        break;
                    }
                    sb.append(cArr[i2]);
                    i2++;
                }
            } else {
                sb.append('-');
            }
            sb.append(':');
            sb.append(this.f52609f);
            sb.append('=');
            sb.append(this.f52610g);
            sb.append(']');
            if (this.f52608e != null) {
                for (int i3 = 0; i3 < this.f52608e.length; i3++) {
                    sb.append('|');
                    b bVar = this.f52608e[i3];
                    if (bVar != null) {
                        bVar.b(sb);
                    } else {
                        sb.append("-");
                    }
                }
            }
            sb.append('}');
            if (this.f52607d != null) {
                sb.append(",\n");
                this.f52607d.b(sb);
            }
        }

        @Override // java.util.Map.Entry
        public Object getKey() {
            return this.f52609f;
        }

        @Override // java.util.Map.Entry
        public Object getValue() {
            return this.f52610g;
        }

        @Override // java.util.Map.Entry
        public Object setValue(Object obj) {
            Object obj2 = this.f52610g;
            this.f52610g = obj;
            return obj2;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder();
            b(sb);
            return sb.toString();
        }

        public b(boolean z2, String str, int i2) {
            int length = str.length() - i2;
            this.f52605b = new char[length];
            this.f52606c = new char[length];
            for (int i3 = 0; i3 < length; i3++) {
                char cCharAt = str.charAt(i2 + i3);
                this.f52605b[i3] = cCharAt;
                if (z2) {
                    if (Character.isUpperCase(cCharAt)) {
                        cCharAt = Character.toLowerCase(cCharAt);
                    } else if (Character.isLowerCase(cCharAt)) {
                        cCharAt = Character.toUpperCase(cCharAt);
                    }
                    this.f52606c[i3] = cCharAt;
                }
            }
        }
    }

    public class c implements Map.Entry {
        public c() {
        }

        @Override // java.util.Map.Entry
        public Object getKey() {
            return null;
        }

        @Override // java.util.Map.Entry
        public Object getValue() {
            return StringMap.this._nullValue;
        }

        @Override // java.util.Map.Entry
        public Object setValue(Object obj) {
            StringMap stringMap = StringMap.this;
            Object obj2 = stringMap._nullValue;
            stringMap._nullValue = obj;
            return obj2;
        }

        public String toString() {
            return "[:null=" + StringMap.this._nullValue + "]";
        }
    }

    public StringMap() {
        this._width = 17;
        this._root = new b();
        this._ignoreCase = false;
        this._nullEntry = null;
        this._nullValue = null;
        HashSet hashSet = new HashSet(3);
        this._entrySet = hashSet;
        this._umEntrySet = Collections.unmodifiableSet(hashSet);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public void clear() {
        this._root = new b();
        this._nullEntry = null;
        this._nullValue = null;
        this._entrySet.clear();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsKey(Object obj) {
        return obj == null ? this._nullEntry != null : getEntry(obj.toString(), 0, obj.toString().length()) != null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set entrySet() {
        return this._umEntrySet;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Object get(Object obj) {
        return obj == null ? this._nullValue : obj instanceof String ? get((String) obj) : get(obj.toString());
    }

    public Map.Entry getBestEntry(byte[] bArr, int i2, int i3) {
        if (bArr == null) {
            return this._nullEntry;
        }
        b bVar = this._root;
        int i4 = -1;
        for (int i5 = 0; i5 < i3; i5++) {
            char c2 = (char) bArr[i2 + i5];
            if (i4 == -1) {
                b[] bVarArr = bVar.f52608e;
                b bVar2 = bVarArr == null ? null : bVarArr[c2 % this._width];
                if (bVar2 == null && i5 > 0) {
                    return bVar;
                }
                bVar = bVar2;
                i4 = 0;
            }
            while (bVar != null) {
                char[] cArr = bVar.f52605b;
                if (cArr[i4] == c2 || (this._ignoreCase && bVar.f52606c[i4] == c2)) {
                    i4++;
                    if (i4 == cArr.length) {
                        i4 = -1;
                    }
                } else {
                    if (i4 > 0) {
                        return null;
                    }
                    bVar = bVar.f52607d;
                }
            }
            return null;
        }
        if (i4 > 0) {
            return null;
        }
        if (bVar == null || bVar.f52609f != null) {
            return bVar;
        }
        return null;
    }

    public Map.Entry getEntry(String str, int i2, int i3) {
        if (str == null) {
            return this._nullEntry;
        }
        b bVar = this._root;
        int i4 = -1;
        for (int i5 = 0; i5 < i3; i5++) {
            char cCharAt = str.charAt(i2 + i5);
            if (i4 == -1) {
                b[] bVarArr = bVar.f52608e;
                bVar = bVarArr == null ? null : bVarArr[cCharAt % this._width];
                i4 = 0;
            }
            while (bVar != null) {
                char[] cArr = bVar.f52605b;
                if (cArr[i4] == cCharAt || (this._ignoreCase && bVar.f52606c[i4] == cCharAt)) {
                    i4++;
                    if (i4 == cArr.length) {
                        i4 = -1;
                    }
                } else {
                    if (i4 > 0) {
                        return null;
                    }
                    bVar = bVar.f52607d;
                }
            }
            return null;
        }
        if (i4 > 0) {
            return null;
        }
        if (bVar == null || bVar.f52609f != null) {
            return bVar;
        }
        return null;
    }

    public int getWidth() {
        return this._width;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean isEmpty() {
        return this._entrySet.isEmpty();
    }

    public boolean isIgnoreCase() {
        return this._ignoreCase;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Object put(Object obj, Object obj2) {
        return obj == null ? put((String) null, obj2) : put(obj.toString(), obj2);
    }

    @Override // java.io.Externalizable
    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        boolean z2 = objectInput.readBoolean();
        HashMap map = (HashMap) objectInput.readObject();
        setIgnoreCase(z2);
        putAll(map);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Object remove(Object obj) {
        return obj == null ? remove((String) null) : remove(obj.toString());
    }

    public void setIgnoreCase(boolean z2) {
        if (this._root.f52608e != null) {
            throw new IllegalStateException("Must be set before first put");
        }
        this._ignoreCase = z2;
    }

    public void setWidth(int i2) {
        this._width = i2;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int size() {
        return this._entrySet.size();
    }

    @Override // java.io.Externalizable
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        HashMap map = new HashMap(this);
        objectOutput.writeBoolean(this._ignoreCase);
        objectOutput.writeObject(map);
    }

    public Object put(String str, Object obj) {
        if (str == null) {
            Object obj2 = this._nullValue;
            this._nullValue = obj;
            if (this._nullEntry == null) {
                c cVar = new c();
                this._nullEntry = cVar;
                this._entrySet.add(cVar);
            }
            return obj2;
        }
        b bVar = this._root;
        b bVar2 = null;
        b bVar3 = null;
        int i2 = 0;
        int i3 = -1;
        while (true) {
            if (i2 >= str.length()) {
                break;
            }
            char cCharAt = str.charAt(i2);
            if (i3 == -1) {
                b[] bVarArr = bVar.f52608e;
                bVar2 = null;
                bVar3 = bVar;
                bVar = bVarArr == null ? null : bVarArr[cCharAt % this._width];
                i3 = 0;
            }
            while (bVar != null) {
                char[] cArr = bVar.f52605b;
                if (cArr[i3] == cCharAt || (this._ignoreCase && bVar.f52606c[i3] == cCharAt)) {
                    i3++;
                    if (i3 == cArr.length) {
                        bVar2 = null;
                        i3 = -1;
                        i2++;
                    } else {
                        bVar2 = null;
                        i2++;
                    }
                } else if (i3 == 0) {
                    bVar2 = bVar;
                    bVar = bVar.f52607d;
                } else {
                    bVar.a(this, i3);
                    i2--;
                    i3 = -1;
                    i2++;
                }
            }
            bVar = new b(this._ignoreCase, str, i2);
            if (bVar2 != null) {
                bVar2.f52607d = bVar;
            } else if (bVar3 != null) {
                if (bVar3.f52608e == null) {
                    bVar3.f52608e = new b[this._width];
                }
                b[] bVarArr2 = bVar3.f52608e;
                int i4 = this._width;
                bVarArr2[cCharAt % i4] = bVar;
                char[] cArr2 = bVar.f52606c;
                int i5 = cArr2[0] % i4;
                if (cArr2 != null && bVar.f52605b[0] % i4 != i5) {
                    b bVar4 = bVarArr2[i5];
                    if (bVar4 == null) {
                        bVarArr2[i5] = bVar;
                    } else {
                        while (true) {
                            b bVar5 = bVar4.f52607d;
                            if (bVar5 == null) {
                                break;
                            }
                            bVar4 = bVar5;
                        }
                        bVar4.f52607d = bVar;
                    }
                }
            } else {
                this._root = bVar;
            }
        }
        if (bVar == null) {
            return null;
        }
        if (i3 > 0) {
            bVar.a(this, i3);
        }
        Object obj3 = bVar.f52610g;
        bVar.f52609f = str;
        bVar.f52610g = obj;
        this._entrySet.add(bVar);
        return obj3;
    }

    public Object remove(String str) {
        if (str == null) {
            Object obj = this._nullValue;
            c cVar = this._nullEntry;
            if (cVar != null) {
                this._entrySet.remove(cVar);
                this._nullEntry = null;
                this._nullValue = null;
            }
            return obj;
        }
        b bVar = this._root;
        int i2 = -1;
        for (int i3 = 0; i3 < str.length(); i3++) {
            char cCharAt = str.charAt(i3);
            if (i2 == -1) {
                b[] bVarArr = bVar.f52608e;
                bVar = bVarArr == null ? null : bVarArr[cCharAt % this._width];
                i2 = 0;
            }
            while (bVar != null) {
                char[] cArr = bVar.f52605b;
                if (cArr[i2] != cCharAt && (!this._ignoreCase || bVar.f52606c[i2] != cCharAt)) {
                    if (i2 > 0) {
                        return null;
                    }
                    bVar = bVar.f52607d;
                } else {
                    i2++;
                    if (i2 == cArr.length) {
                        i2 = -1;
                    }
                }
            }
            return null;
        }
        if (i2 > 0) {
            return null;
        }
        if (bVar != null && bVar.f52609f == null) {
            return null;
        }
        Object obj2 = bVar.f52610g;
        this._entrySet.remove(bVar);
        bVar.f52610g = null;
        bVar.f52609f = null;
        return obj2;
    }

    public Object get(String str) {
        if (str == null) {
            return this._nullValue;
        }
        Map.Entry entry = getEntry(str, 0, str.length());
        if (entry == null) {
            return null;
        }
        return entry.getValue();
    }

    public StringMap(boolean z2) {
        this();
        this._ignoreCase = z2;
    }

    public Map.Entry getEntry(char[] cArr, int i2, int i3) {
        if (cArr == null) {
            return this._nullEntry;
        }
        b bVar = this._root;
        int i4 = -1;
        for (int i5 = 0; i5 < i3; i5++) {
            char c2 = cArr[i2 + i5];
            if (i4 == -1) {
                b[] bVarArr = bVar.f52608e;
                bVar = bVarArr == null ? null : bVarArr[c2 % this._width];
                i4 = 0;
            }
            while (bVar != null) {
                char[] cArr2 = bVar.f52605b;
                if (cArr2[i4] != c2 && (!this._ignoreCase || bVar.f52606c[i4] != c2)) {
                    if (i4 > 0) {
                        return null;
                    }
                    bVar = bVar.f52607d;
                } else {
                    i4++;
                    if (i4 == cArr2.length) {
                        i4 = -1;
                    }
                }
            }
            return null;
        }
        if (i4 > 0) {
            return null;
        }
        if (bVar == null || bVar.f52609f != null) {
            return bVar;
        }
        return null;
    }

    public StringMap(boolean z2, int i2) {
        this();
        this._ignoreCase = z2;
        this._width = i2;
    }
}
