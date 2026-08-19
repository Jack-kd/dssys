package A1;

import com.baidu.mobads.sdk.api.IAdInterListener;
import kotlin.jvm.internal.j;
import kotlin.jvm.internal.m;
import kotlin.reflect.c;

/* loaded from: classes5.dex */
public abstract class a {
    public static final Class a(c cVar) {
        j.e(cVar, "<this>");
        Class clsC = ((kotlin.jvm.internal.c) cVar).c();
        j.c(clsC, "null cannot be cast to non-null type java.lang.Class<T of kotlin.jvm.JvmClassMappingKt.<get-java>>");
        return clsC;
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue
    java.lang.NullPointerException: Cannot invoke "java.util.List.iterator()" because the return value of "jadx.core.dex.visitors.regions.SwitchOverStringVisitor$SwitchData.getNewCases()" is null
    	at jadx.core.dex.visitors.regions.SwitchOverStringVisitor.restoreSwitchOverString(SwitchOverStringVisitor.java:109)
    	at jadx.core.dex.visitors.regions.SwitchOverStringVisitor.visitRegion(SwitchOverStringVisitor.java:66)
    	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseIterativeStepInternal(DepthRegionTraversal.java:77)
    	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseIterativeStepInternal(DepthRegionTraversal.java:82)
     */
    public static final Class b(c cVar) {
        j.e(cVar, "<this>");
        Class clsC = ((kotlin.jvm.internal.c) cVar).c();
        if (!clsC.isPrimitive()) {
            j.c(clsC, "null cannot be cast to non-null type java.lang.Class<T of kotlin.jvm.JvmClassMappingKt.<get-javaObjectType>>");
            return clsC;
        }
        String name = clsC.getName();
        switch (name.hashCode()) {
            case -1325958191:
                if (name.equals("double")) {
                    clsC = Double.class;
                    break;
                }
                break;
            case 104431:
                if (name.equals(IAdInterListener.AdProdType.PRODUCT_INTERSTITIAL)) {
                    clsC = Integer.class;
                    break;
                }
                break;
            case 3039496:
                if (name.equals("byte")) {
                    clsC = Byte.class;
                    break;
                }
                break;
            case 3052374:
                if (name.equals("char")) {
                    clsC = Character.class;
                    break;
                }
                break;
            case 3327612:
                if (name.equals("long")) {
                    clsC = Long.class;
                    break;
                }
                break;
            case 3625364:
                if (name.equals("void")) {
                    clsC = Void.class;
                    break;
                }
                break;
            case 64711720:
                if (name.equals("boolean")) {
                    clsC = Boolean.class;
                    break;
                }
                break;
            case 97526364:
                if (name.equals("float")) {
                    clsC = Float.class;
                    break;
                }
                break;
            case 109413500:
                if (name.equals("short")) {
                    clsC = Short.class;
                    break;
                }
                break;
        }
        j.c(clsC, "null cannot be cast to non-null type java.lang.Class<T of kotlin.jvm.JvmClassMappingKt.<get-javaObjectType>>");
        return clsC;
    }

    public static final c c(Class cls) {
        j.e(cls, "<this>");
        return m.b(cls);
    }
}
