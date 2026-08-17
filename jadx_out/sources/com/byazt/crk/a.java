package com.byazt.crk;

import android.util.Xml;
import com.anythink.core.common.f.f;
import com.baidu.mobads.sdk.api.IAdInterListener;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlSerializer;

@com.byazt.kj.hp(hp = {0, 1, 160, 54})
/* loaded from: classes2.dex */
public class a implements com.byazt.ke.hp, com.byazt.ke.l {
    public final com.byazt.ow.jx hp;

    /* renamed from: l, reason: collision with root package name */
    public final boolean f18959l;

    public a(com.byazt.ow.jx jxVar) {
        this.hp = jxVar;
        this.f18959l = false;
    }

    @Override // com.byazt.ke.hp
    public Map<String, Object> hp(File file) throws Throwable {
        FileInputStream fileInputStream;
        HashMap map = new HashMap();
        if (!file.exists() || !file.canRead()) {
            return map;
        }
        FileInputStream fileInputStream2 = null;
        try {
            try {
                fileInputStream = new FileInputStream(file);
            } catch (IOException unused) {
            }
            try {
                XmlPullParser xmlPullParserNewPullParser = Xml.newPullParser();
                xmlPullParserNewPullParser.setInput(fileInputStream, null);
                for (int eventType = xmlPullParserNewPullParser.getEventType(); eventType != 1; eventType = xmlPullParserNewPullParser.next()) {
                    if (eventType == 2) {
                        String name = xmlPullParserNewPullParser.getName();
                        if ("string".equals(name) || IAdInterListener.AdProdType.PRODUCT_INTERSTITIAL.equals(name) || "long".equals(name) || "float".equals(name) || "boolean".equals(name) || "set".equals(name)) {
                            String attributeValue = xmlPullParserNewPullParser.getAttributeValue(null, "name");
                            Object objHp = hp(xmlPullParserNewPullParser, name);
                            if (attributeValue != null && objHp != null) {
                                map.put(attributeValue, objHp);
                            }
                        }
                    }
                }
                fileInputStream.close();
            } catch (Exception unused2) {
                fileInputStream2 = fileInputStream;
                if (fileInputStream2 != null) {
                    fileInputStream2.close();
                }
                return new com.byazt.ak.l().hp(map, this.hp, this.f18959l);
            } catch (Throwable th) {
                th = th;
                fileInputStream2 = fileInputStream;
                if (fileInputStream2 != null) {
                    try {
                        fileInputStream2.close();
                    } catch (IOException unused3) {
                    }
                }
                throw th;
            }
        } catch (Exception unused4) {
        } catch (Throwable th2) {
            th = th2;
        }
        return new com.byazt.ak.l().hp(map, this.hp, this.f18959l);
    }

    public a(com.byazt.ow.jx jxVar, boolean z2) {
        this.hp = jxVar;
        this.f18959l = z2;
    }

    private Object hp(XmlPullParser xmlPullParser, String str) throws XmlPullParserException, IOException {
        str.getClass();
        switch (str) {
            case "string":
                return xmlPullParser.nextText();
            case "int":
                return Integer.valueOf(Integer.parseInt(xmlPullParser.getAttributeValue(null, f.a.f3244d)));
            case "set":
                return hp(xmlPullParser);
            case "long":
                return Long.valueOf(Long.parseLong(xmlPullParser.getAttributeValue(null, f.a.f3244d)));
            case "boolean":
                return Boolean.valueOf(Boolean.parseBoolean(xmlPullParser.getAttributeValue(null, f.a.f3244d)));
            case "float":
                return Float.valueOf(Float.parseFloat(xmlPullParser.getAttributeValue(null, f.a.f3244d)));
            default:
                return null;
        }
    }

    private Set<String> hp(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        HashSet hashSet = new HashSet();
        int eventType = xmlPullParser.getEventType();
        while (true) {
            if (eventType == 3 && "set".equals(xmlPullParser.getName())) {
                return hashSet;
            }
            if (eventType == 2 && "string".equals(xmlPullParser.getName())) {
                hashSet.add(xmlPullParser.nextText());
            }
            eventType = xmlPullParser.next();
        }
    }

    private void hp(String str, Object obj, XmlSerializer xmlSerializer) throws IllegalStateException, IOException, IllegalArgumentException {
        if (obj instanceof String) {
            xmlSerializer.startTag(null, "string");
            xmlSerializer.attribute(null, "name", str);
            xmlSerializer.text(hp((String) obj));
            xmlSerializer.endTag(null, "string");
            return;
        }
        if (obj instanceof Integer) {
            hp(str, (Integer) obj, xmlSerializer);
            return;
        }
        if (obj instanceof Long) {
            hp(str, (Long) obj, xmlSerializer);
            return;
        }
        if (obj instanceof Float) {
            hp(str, (Float) obj, xmlSerializer);
            return;
        }
        if (obj instanceof Double) {
            hp(str, (Double) obj, xmlSerializer);
        } else if (obj instanceof Boolean) {
            hp(str, (Boolean) obj, xmlSerializer);
        } else if (obj instanceof Set) {
            hp(str, (Set<String>) obj, xmlSerializer);
        }
    }

    private void hp(String str, Integer num, XmlSerializer xmlSerializer) throws IllegalStateException, IOException, IllegalArgumentException {
        xmlSerializer.startTag(null, IAdInterListener.AdProdType.PRODUCT_INTERSTITIAL);
        xmlSerializer.attribute(null, "name", str);
        xmlSerializer.attribute(null, f.a.f3244d, Integer.toString(num.intValue()));
        xmlSerializer.endTag(null, IAdInterListener.AdProdType.PRODUCT_INTERSTITIAL);
    }

    private void hp(String str, Long l2, XmlSerializer xmlSerializer) throws IllegalStateException, IOException, IllegalArgumentException {
        xmlSerializer.startTag(null, "long");
        xmlSerializer.attribute(null, "name", str);
        xmlSerializer.attribute(null, f.a.f3244d, Long.toString(l2.longValue()));
        xmlSerializer.endTag(null, "long");
    }

    private void hp(String str, Float f2, XmlSerializer xmlSerializer) throws IllegalStateException, IOException, IllegalArgumentException {
        xmlSerializer.startTag(null, "float");
        xmlSerializer.attribute(null, "name", str);
        xmlSerializer.attribute(null, f.a.f3244d, Float.toString(f2.floatValue()));
        xmlSerializer.endTag(null, "float");
    }

    private void hp(String str, Double d2, XmlSerializer xmlSerializer) throws IllegalStateException, IOException, IllegalArgumentException {
        xmlSerializer.startTag(null, "double");
        xmlSerializer.attribute(null, "name", str);
        xmlSerializer.attribute(null, f.a.f3244d, Double.toString(d2.doubleValue()));
        xmlSerializer.endTag(null, "double");
    }

    private void hp(String str, Boolean bool, XmlSerializer xmlSerializer) throws IllegalStateException, IOException, IllegalArgumentException {
        xmlSerializer.startTag(null, "boolean");
        xmlSerializer.attribute(null, "name", str);
        xmlSerializer.attribute(null, f.a.f3244d, Boolean.toString(bool.booleanValue()));
        xmlSerializer.endTag(null, "boolean");
    }

    private void hp(String str, Set<String> set, XmlSerializer xmlSerializer) throws IllegalStateException, IOException, IllegalArgumentException {
        xmlSerializer.startTag(null, "set");
        xmlSerializer.attribute(null, "name", str);
        for (String str2 : set) {
            xmlSerializer.startTag(null, "string");
            xmlSerializer.text(hp(str2));
            xmlSerializer.endTag(null, "string");
        }
        xmlSerializer.endTag(null, "set");
    }

    @Override // com.byazt.ke.l
    public void hp(Map<String, Object> map, File file) throws Throwable {
        if (file == null) {
            return;
        }
        if (map == null) {
            map = new HashMap<>();
        }
        file.getParentFile().mkdirs();
        try {
            file.createNewFile();
        } catch (IOException unused) {
        }
        Map<String, Object> mapL = new com.byazt.ak.l().l(map, this.hp, this.f18959l);
        FileOutputStream fileOutputStream = null;
        try {
            FileOutputStream fileOutputStream2 = new FileOutputStream(file);
            try {
                XmlSerializer xmlSerializerNewSerializer = Xml.newSerializer();
                xmlSerializerNewSerializer.setOutput(fileOutputStream2, "utf-8");
                xmlSerializerNewSerializer.startDocument(null, Boolean.TRUE);
                xmlSerializerNewSerializer.setFeature("http://xmlpull.org/v1/doc/features.html#indent-output", true);
                xmlSerializerNewSerializer.startTag(null, "map");
                for (String str : mapL.keySet()) {
                    if (str != null) {
                        hp(str, mapL.get(str), xmlSerializerNewSerializer);
                    }
                }
                xmlSerializerNewSerializer.endTag(null, "map");
                xmlSerializerNewSerializer.endDocument();
                try {
                    fileOutputStream2.close();
                } catch (Exception unused2) {
                }
            } catch (Exception unused3) {
                fileOutputStream = fileOutputStream2;
                if (fileOutputStream != null) {
                    try {
                        fileOutputStream.close();
                    } catch (Exception unused4) {
                    }
                }
            } catch (Throwable th) {
                th = th;
                fileOutputStream = fileOutputStream2;
                if (fileOutputStream != null) {
                    try {
                        fileOutputStream.close();
                    } catch (Exception unused5) {
                    }
                }
                throw th;
            }
        } catch (Exception unused6) {
        } catch (Throwable th2) {
            th = th2;
        }
    }

    private String hp(String str) {
        int i2;
        StringBuilder sb = null;
        if (str == null) {
            return null;
        }
        int length = str.length();
        int i3 = 0;
        while (i3 < length) {
            char cCharAt = str.charAt(i3);
            if ((cCharAt < ' ' || cCharAt > 55295) && !((cCharAt >= 57344 && cCharAt <= 65533) || cCharAt == '\t' || cCharAt == '\n' || cCharAt == '\r')) {
                if (sb == null) {
                    sb = new StringBuilder();
                    if (i3 > 0) {
                        sb.append(str.substring(0, i3));
                    }
                }
                if (cCharAt == '\"') {
                    sb.append("&quot;");
                } else if (cCharAt == '<') {
                    sb.append("&lt;");
                } else if (cCharAt == '>') {
                    sb.append("&gt;");
                } else if (cCharAt == '&') {
                    sb.append("&amp;");
                } else if (cCharAt != '\'') {
                    if (Character.isHighSurrogate(cCharAt) && (i2 = i3 + 1) < length) {
                        char cCharAt2 = str.charAt(i2);
                        if (Character.isLowSurrogate(cCharAt2)) {
                            sb.append(cCharAt);
                            sb.append(cCharAt2);
                            i3 = i2;
                        }
                    } else {
                        sb.append("&#");
                        sb.append((int) cCharAt);
                        sb.append(";");
                    }
                } else {
                    sb.append("&apos;");
                }
            } else if (sb != null) {
                sb.append(cCharAt);
            }
            i3++;
        }
        return sb != null ? sb.toString() : str;
    }
}
