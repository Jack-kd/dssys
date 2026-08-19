package com.kwad.library.b.a;

import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.anythink.core.common.d.i;
import dalvik.system.BaseDexClassLoader;
import java.io.File;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes4.dex */
public final class b extends BaseDexClassLoader {
    private final List<String> aDK;
    private final List<String> aDL;
    private final ClassLoader aDM;

    public b(ClassLoader classLoader, String str, @Nullable File file, String str2, List<String> list, List<String> list2) {
        super(str, file, str2, classLoader);
        this.aDM = classLoader;
        this.aDK = list;
        this.aDL = list2;
        while (classLoader.getParent() != null) {
            classLoader = classLoader.getParent();
        }
    }

    @Override // dalvik.system.BaseDexClassLoader, java.lang.ClassLoader
    public final String findLibrary(String str) {
        String strFindLibrary = super.findLibrary(str);
        return (TextUtils.isEmpty(strFindLibrary) && (this.aDM instanceof BaseDexClassLoader)) ? ((BaseDexClassLoader) this.aDM).findLibrary(str) : strFindLibrary;
    }

    @Override // java.lang.ClassLoader
    public final Class<?> loadClass(String str, boolean z2) throws ClassNotFoundException {
        List<String> list = this.aDK;
        if (list != null && list.contains(str)) {
            return super.loadClass(str, z2);
        }
        List<String> list2 = this.aDL;
        if (list2 != null) {
            Iterator<String> it = list2.iterator();
            while (it.hasNext()) {
                if (str.startsWith(it.next() + i.f2495E)) {
                    return super.loadClass(str, z2);
                }
            }
        }
        Class<?> clsFindLoadedClass = findLoadedClass(str);
        if (clsFindLoadedClass != null) {
            return clsFindLoadedClass;
        }
        try {
            return findClass(str);
        } catch (ClassNotFoundException e2) {
            try {
                return getParent().loadClass(str);
            } catch (ClassNotFoundException e3) {
                e3.addSuppressed(e2);
                throw e3;
            }
        }
    }
}
