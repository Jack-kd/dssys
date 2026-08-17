package com.byazt.eba;

import com.byazt.raq.ec;
import com.byazt.raq.jl;
import com.byazt.raq.vv;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;

/* loaded from: classes2.dex */
public interface hp {
    public static final hp hp = new hp() { // from class: com.byazt.eba.hp.1
        @Override // com.byazt.eba.hp
        public void a(File file) throws IOException {
            File[] fileArrListFiles = file.listFiles();
            if (fileArrListFiles == null) {
                throw new IOException("not a readable directory: ".concat(String.valueOf(file)));
            }
            for (File file2 : fileArrListFiles) {
                if (file2.isDirectory()) {
                    a(file2);
                }
                if (!file2.delete()) {
                    throw new IOException("failed to delete ".concat(String.valueOf(file2)));
                }
            }
        }

        @Override // com.byazt.eba.hp
        public void delete(File file) throws IOException {
            if (!file.delete() && file.exists()) {
                throw new IOException("failed to delete ".concat(String.valueOf(file)));
            }
        }

        @Override // com.byazt.eba.hp
        public ec hp(File file) throws FileNotFoundException {
            return jl.hp(file);
        }

        @Override // com.byazt.eba.hp
        public boolean j(File file) {
            return file.exists();
        }

        @Override // com.byazt.eba.hp
        public vv jx(File file) throws FileNotFoundException {
            try {
                return jl.jx(file);
            } catch (FileNotFoundException unused) {
                file.getParentFile().mkdirs();
                return jl.jx(file);
            }
        }

        @Override // com.byazt.eba.hp
        public vv l(File file) throws FileNotFoundException {
            try {
                return jl.l(file);
            } catch (FileNotFoundException unused) {
                file.getParentFile().mkdirs();
                return jl.l(file);
            }
        }

        @Override // com.byazt.eba.hp
        public long w(File file) {
            return file.length();
        }

        @Override // com.byazt.eba.hp
        public void hp(File file, File file2) throws IOException {
            delete(file2);
            if (file.renameTo(file2)) {
                return;
            }
            throw new IOException("failed to rename " + file + " to " + file2);
        }
    };

    void a(File file) throws IOException;

    void delete(File file) throws IOException;

    ec hp(File file) throws FileNotFoundException;

    void hp(File file, File file2) throws IOException;

    boolean j(File file);

    vv jx(File file) throws FileNotFoundException;

    vv l(File file) throws FileNotFoundException;

    long w(File file);
}
