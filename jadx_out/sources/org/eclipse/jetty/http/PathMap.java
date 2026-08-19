package org.eclipse.jetty.http;

import java.io.Externalizable;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.StringTokenizer;
import org.eclipse.jetty.util.LazyList;
import org.eclipse.jetty.util.StringMap;
import org.fourthline.cling.model.ServiceReference;

/* loaded from: classes5.dex */
public class PathMap extends HashMap implements Externalizable {
    private static String __pathSpecSeparators = ":,";
    a _default;
    List _defaultSingletonList;
    final Set _entrySet;
    final StringMap _exactMap;
    boolean _nodefault;
    a _prefixDefault;
    final StringMap _prefixMap;
    final StringMap _suffixMap;

    public static class a implements Map.Entry {

        /* renamed from: b, reason: collision with root package name */
        public final Object f52136b;

        /* renamed from: c, reason: collision with root package name */
        public final Object f52137c;

        /* renamed from: d, reason: collision with root package name */
        public String f52138d;

        /* renamed from: e, reason: collision with root package name */
        public transient String f52139e;

        public a(Object obj, Object obj2) {
            this.f52136b = obj;
            this.f52137c = obj2;
        }

        public String a() {
            return this.f52138d;
        }

        public void b(String str) {
            this.f52138d = str;
        }

        @Override // java.util.Map.Entry
        public Object getKey() {
            return this.f52136b;
        }

        @Override // java.util.Map.Entry
        public Object getValue() {
            return this.f52137c;
        }

        @Override // java.util.Map.Entry
        public Object setValue(Object obj) {
            throw new UnsupportedOperationException();
        }

        public String toString() {
            if (this.f52139e == null) {
                this.f52139e = this.f52136b + "=" + this.f52137c;
            }
            return this.f52139e;
        }
    }

    public PathMap() {
        super(11);
        this._prefixMap = new StringMap();
        this._suffixMap = new StringMap();
        this._exactMap = new StringMap();
        this._defaultSingletonList = null;
        this._prefixDefault = null;
        this._default = null;
        this._nodefault = false;
        this._entrySet = entrySet();
    }

    private static boolean isPathWildcardMatch(String str, String str2) {
        int length = str.length() - 2;
        return str.endsWith("/*") && str2.regionMatches(0, str, 0, length) && (str2.length() == length || '/' == str2.charAt(length));
    }

    public static String pathInfo(String str, String str2) {
        if ("".equals(str)) {
            return str2;
        }
        if (str.charAt(0) != '/' || str.length() == 1) {
            return null;
        }
        boolean zIsPathWildcardMatch = isPathWildcardMatch(str, str2);
        if ((!str.equals(str2) || zIsPathWildcardMatch) && zIsPathWildcardMatch && str2.length() != str.length() - 2) {
            return str2.substring(str.length() - 2);
        }
        return null;
    }

    public static String pathMatch(String str, String str2) {
        char cCharAt = str.charAt(0);
        if (cCharAt != '/') {
            if (cCharAt == '*' && str2.regionMatches(str2.length() - (str.length() - 1), str, 1, str.length() - 1)) {
                return str2;
            }
            return null;
        }
        if (str.length() == 1 || str.equals(str2)) {
            return str2;
        }
        if (isPathWildcardMatch(str, str2)) {
            return str2.substring(0, str.length() - 2);
        }
        return null;
    }

    public static String relativePath(String str, String str2, String str3) {
        String strPathInfo = pathInfo(str2, str3);
        if (strPathInfo != null) {
            str3 = strPathInfo;
        }
        if (str3.startsWith("./")) {
            str3 = str3.substring(2);
        }
        if (str.endsWith(ServiceReference.DELIMITER)) {
            if (str3.startsWith(ServiceReference.DELIMITER)) {
                return str + str3.substring(1);
            }
            return str + str3;
        }
        if (str3.startsWith(ServiceReference.DELIMITER)) {
            return str + str3;
        }
        return str + ServiceReference.DELIMITER + str3;
    }

    public static void setPathSpecSeparators(String str) {
        __pathSpecSeparators = str;
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public void clear() {
        this._exactMap.clear();
        this._prefixMap.clear();
        this._suffixMap.clear();
        this._default = null;
        this._defaultSingletonList = null;
        super.clear();
    }

    public boolean containsMatch(String str) {
        a match = getMatch(str);
        return (match == null || match.equals(this._default)) ? false : true;
    }

    public Object getLazyMatches(String str) {
        if (str == null) {
            return LazyList.getList(null);
        }
        int length = str.length();
        int iIndexOf = 0;
        Map.Entry entry = this._exactMap.getEntry(str, 0, length);
        Object objAdd = entry != null ? LazyList.add(null, entry.getValue()) : null;
        int iLastIndexOf = length - 1;
        while (true) {
            iLastIndexOf = str.lastIndexOf(47, iLastIndexOf - 1);
            if (iLastIndexOf < 0) {
                break;
            }
            Map.Entry entry2 = this._prefixMap.getEntry(str, 0, iLastIndexOf);
            if (entry2 != null) {
                objAdd = LazyList.add(objAdd, entry2.getValue());
            }
        }
        a aVar = this._prefixDefault;
        if (aVar != null) {
            objAdd = LazyList.add(objAdd, aVar);
        }
        while (true) {
            iIndexOf = str.indexOf(46, iIndexOf + 1);
            if (iIndexOf <= 0) {
                break;
            }
            Map.Entry entry3 = this._suffixMap.getEntry(str, iIndexOf + 1, (length - iIndexOf) - 1);
            if (entry3 != null) {
                objAdd = LazyList.add(objAdd, entry3.getValue());
            }
        }
        a aVar2 = this._default;
        return aVar2 != null ? objAdd == null ? this._defaultSingletonList : LazyList.add(objAdd, aVar2) : objAdd;
    }

    public a getMatch(String str) {
        Map.Entry entry;
        Map.Entry entry2;
        Map.Entry entry3;
        if (str == null) {
            return null;
        }
        int length = str.length();
        int iIndexOf = 0;
        if (length == 1 && str.charAt(0) == '/' && (entry3 = (Map.Entry) this._exactMap.get("")) != null) {
            return (a) entry3;
        }
        Map.Entry entry4 = this._exactMap.getEntry(str, 0, length);
        if (entry4 != null) {
            return (a) entry4.getValue();
        }
        int iLastIndexOf = length;
        do {
            iLastIndexOf = str.lastIndexOf(47, iLastIndexOf - 1);
            if (iLastIndexOf < 0) {
                a aVar = this._prefixDefault;
                if (aVar != null) {
                    return aVar;
                }
                do {
                    iIndexOf = str.indexOf(46, iIndexOf + 1);
                    if (iIndexOf <= 0) {
                        return this._default;
                    }
                    entry = this._suffixMap.getEntry(str, iIndexOf + 1, (length - iIndexOf) - 1);
                } while (entry == null);
                return (a) entry.getValue();
            }
            entry2 = this._prefixMap.getEntry(str, 0, iLastIndexOf);
        } while (entry2 == null);
        return (a) entry2.getValue();
    }

    public List getMatches(String str) {
        return LazyList.getList(getLazyMatches(str));
    }

    public Object match(String str) {
        a match = getMatch(str);
        if (match != null) {
            return match.getValue();
        }
        return null;
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public Object put(Object obj, Object obj2) {
        String string = obj.toString();
        if ("".equals(string.trim())) {
            a aVar = new a("", obj2);
            aVar.b("");
            this._exactMap.put("", (Object) aVar);
            return super.put("", obj2);
        }
        StringTokenizer stringTokenizer = new StringTokenizer(string, __pathSpecSeparators);
        Object obj3 = null;
        while (stringTokenizer.hasMoreTokens()) {
            String strNextToken = stringTokenizer.nextToken();
            if (!strNextToken.startsWith(ServiceReference.DELIMITER) && !strNextToken.startsWith("*.")) {
                throw new IllegalArgumentException("PathSpec " + strNextToken + ". must start with '/' or '*.'");
            }
            Object objPut = super.put(strNextToken, obj2);
            a aVar2 = new a(strNextToken, obj2);
            if (aVar2.getKey().equals(strNextToken)) {
                if (strNextToken.equals("/*")) {
                    this._prefixDefault = aVar2;
                } else if (strNextToken.endsWith("/*")) {
                    String strSubstring = strNextToken.substring(0, strNextToken.length() - 2);
                    aVar2.b(strSubstring);
                    this._prefixMap.put(strSubstring, (Object) aVar2);
                    this._exactMap.put(strSubstring, (Object) aVar2);
                    this._exactMap.put(strNextToken.substring(0, strNextToken.length() - 1), (Object) aVar2);
                } else if (strNextToken.startsWith("*.")) {
                    this._suffixMap.put(strNextToken.substring(2), (Object) aVar2);
                } else if (!strNextToken.equals(ServiceReference.DELIMITER)) {
                    aVar2.b(strNextToken);
                    this._exactMap.put(strNextToken, (Object) aVar2);
                } else if (this._nodefault) {
                    this._exactMap.put(strNextToken, (Object) aVar2);
                } else {
                    this._default = aVar2;
                    this._defaultSingletonList = Collections.singletonList(aVar2);
                }
            }
            obj3 = objPut;
        }
        return obj3;
    }

    @Override // java.io.Externalizable
    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        putAll((HashMap) objectInput.readObject());
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public Object remove(Object obj) {
        if (obj != null) {
            String str = (String) obj;
            if (str.equals("/*")) {
                this._prefixDefault = null;
            } else if (str.endsWith("/*")) {
                this._prefixMap.remove(str.substring(0, str.length() - 2));
                this._exactMap.remove(str.substring(0, str.length() - 1));
                this._exactMap.remove(str.substring(0, str.length() - 2));
            } else if (str.startsWith("*.")) {
                this._suffixMap.remove(str.substring(2));
            } else if (str.equals(ServiceReference.DELIMITER)) {
                this._default = null;
                this._defaultSingletonList = null;
            } else {
                this._exactMap.remove(str);
            }
        }
        return super.remove(obj);
    }

    @Override // java.io.Externalizable
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeObject(new HashMap(this));
    }

    public static boolean match(String str, String str2) throws IllegalArgumentException {
        return match(str, str2, false);
    }

    public static boolean match(String str, String str2, boolean z2) throws IllegalArgumentException {
        if (str.length() == 0) {
            return ServiceReference.DELIMITER.equals(str2);
        }
        char cCharAt = str.charAt(0);
        if (cCharAt == '/') {
            if ((!z2 && str.length() == 1) || str.equals(str2) || isPathWildcardMatch(str, str2)) {
                return true;
            }
        } else if (cCharAt == '*') {
            return str2.regionMatches((str2.length() - str.length()) + 1, str, 1, str.length() - 1);
        }
        return false;
    }

    public PathMap(boolean z2) {
        super(11);
        this._prefixMap = new StringMap();
        this._suffixMap = new StringMap();
        this._exactMap = new StringMap();
        this._defaultSingletonList = null;
        this._prefixDefault = null;
        this._default = null;
        this._nodefault = false;
        this._entrySet = entrySet();
        this._nodefault = z2;
    }

    public PathMap(int i2) {
        super(i2);
        this._prefixMap = new StringMap();
        this._suffixMap = new StringMap();
        this._exactMap = new StringMap();
        this._defaultSingletonList = null;
        this._prefixDefault = null;
        this._default = null;
        this._nodefault = false;
        this._entrySet = entrySet();
    }

    public PathMap(Map map) {
        this._prefixMap = new StringMap();
        this._suffixMap = new StringMap();
        this._exactMap = new StringMap();
        this._defaultSingletonList = null;
        this._prefixDefault = null;
        this._default = null;
        this._nodefault = false;
        putAll(map);
        this._entrySet = entrySet();
    }
}
