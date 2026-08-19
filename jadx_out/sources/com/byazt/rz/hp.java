package com.byazt.rz;

import android.content.Context;
import android.content.ContextWrapper;
import android.content.SharedPreferences;
import android.database.DatabaseErrorHandler;
import android.database.sqlite.SQLiteDatabase;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_CURRENT_DOWNLOAD_INDEX, 28})
/* loaded from: classes3.dex */
public class hp extends ContextWrapper {

    /* renamed from: a, reason: collision with root package name */
    public File f25410a;
    public File eb;
    public final Object hp;

    /* renamed from: j, reason: collision with root package name */
    public File f25411j;
    public File jx;

    /* renamed from: l, reason: collision with root package name */
    public File f25412l;

    /* renamed from: s, reason: collision with root package name */
    public File f25413s;

    /* renamed from: w, reason: collision with root package name */
    public File f25414w;

    public hp(Context context) {
        super(context);
        this.hp = new Object();
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public String[] databaseList() {
        if (hp() == null) {
            return super.databaseList();
        }
        String[] strArrDatabaseList = super.databaseList();
        int length = strArrDatabaseList.length;
        boolean[] zArr = new boolean[length];
        int i2 = 0;
        for (int i3 = 0; i3 < strArrDatabaseList.length; i3++) {
            if (strArrDatabaseList[i3].startsWith(hp())) {
                zArr[i3] = true;
                i2++;
            } else {
                zArr[i3] = false;
            }
        }
        String[] strArr = new String[i2];
        int i4 = 0;
        for (int i5 = 0; i5 < length; i5++) {
            if (zArr[i5]) {
                strArr[i4] = strArrDatabaseList[i5];
                i4++;
            }
        }
        return strArr;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public boolean deleteDatabase(String str) {
        return hp() == null ? super.deleteDatabase(str) : super.deleteDatabase(hp(str));
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public boolean deleteFile(String str) {
        return hp(getFilesDir(), str).delete();
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public boolean deleteSharedPreferences(String str) {
        return hp() == null ? super.deleteSharedPreferences(str) : super.deleteSharedPreferences(hp(str));
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public File getCacheDir() {
        File fileHp;
        if (hp() == null) {
            return super.getCacheDir();
        }
        synchronized (this.hp) {
            try {
                if (this.f25410a == null) {
                    this.f25410a = new File(super.getCacheDir(), hp());
                }
                fileHp = hp(this.f25410a);
            } catch (Throwable th) {
                throw th;
            }
        }
        return fileHp;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public File getCodeCacheDir() {
        File fileHp;
        if (hp() == null) {
            return super.getCodeCacheDir();
        }
        synchronized (this.hp) {
            try {
                if (this.eb == null) {
                    this.eb = new File(super.getCodeCacheDir(), hp());
                }
                fileHp = hp(this.eb);
            } catch (Throwable th) {
                throw th;
            }
        }
        return fileHp;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public File getDataDir() {
        File fileHp;
        if (hp() == null) {
            return super.getDataDir();
        }
        synchronized (this.hp) {
            try {
                if (this.f25412l == null) {
                    this.f25412l = new File(l(), hp());
                }
                fileHp = hp(this.f25412l);
            } catch (Throwable th) {
                throw th;
            }
        }
        return fileHp;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public File getDatabasePath(String str) {
        return hp() == null ? super.getDatabasePath(str) : super.getDatabasePath(hp(str));
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public File getDir(String str, int i2) {
        return (i2 != 0 || hp() == null) ? super.getDir(str, i2) : hp(new File(super.getDir(str, i2), hp()));
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public File getExternalCacheDir() {
        File fileHp;
        if (hp() == null) {
            return super.getExternalCacheDir();
        }
        synchronized (this.hp) {
            try {
                if (this.f25413s == null) {
                    this.f25413s = new File(super.getExternalCacheDir(), hp());
                }
                fileHp = hp(this.f25413s);
            } catch (Throwable th) {
                throw th;
            }
        }
        return fileHp;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public File[] getExternalCacheDirs() {
        if (hp() == null) {
            return super.getExternalCacheDirs();
        }
        File[] externalCacheDirs = super.getExternalCacheDirs();
        File[] fileArr = new File[externalCacheDirs.length];
        for (int i2 = 0; i2 < externalCacheDirs.length; i2++) {
            fileArr[i2] = hp(new File(externalCacheDirs[i2], hp()));
        }
        return fileArr;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public File getExternalFilesDir(String str) {
        return hp() == null ? super.getExternalFilesDir(str) : hp(new File(super.getExternalFilesDir(str), hp()));
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public File[] getExternalFilesDirs(String str) {
        if (hp() == null) {
            return super.getExternalFilesDirs(str);
        }
        File[] externalFilesDirs = super.getExternalFilesDirs(str);
        File[] fileArr = new File[externalFilesDirs.length];
        for (int i2 = 0; i2 < externalFilesDirs.length; i2++) {
            fileArr[i2] = hp(new File(externalFilesDirs[i2], hp()));
        }
        return fileArr;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public File[] getExternalMediaDirs() {
        if (hp() == null) {
            return super.getExternalMediaDirs();
        }
        File[] externalMediaDirs = super.getExternalMediaDirs();
        File[] fileArr = new File[externalMediaDirs.length];
        for (int i2 = 0; i2 < externalMediaDirs.length; i2++) {
            fileArr[i2] = hp(new File(externalMediaDirs[i2], hp()));
        }
        return fileArr;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public File getFilesDir() {
        File fileHp;
        if (hp() == null) {
            return super.getFilesDir();
        }
        synchronized (this.hp) {
            try {
                if (this.jx == null) {
                    this.jx = new File(super.getFilesDir(), hp());
                }
                fileHp = hp(this.jx);
            } catch (Throwable th) {
                throw th;
            }
        }
        return fileHp;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public File getNoBackupFilesDir() {
        File fileHp;
        if (hp() == null) {
            return super.getNoBackupFilesDir();
        }
        synchronized (this.hp) {
            try {
                if (this.f25411j == null) {
                    this.f25411j = new File(super.getNoBackupFilesDir(), hp());
                }
                fileHp = hp(this.f25411j);
            } catch (Throwable th) {
                throw th;
            }
        }
        return fileHp;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public File getObbDir() {
        File fileHp;
        if (hp() == null) {
            return super.getObbDir();
        }
        synchronized (this.hp) {
            try {
                if (this.f25414w == null) {
                    this.f25414w = new File(super.getObbDir(), hp());
                }
                fileHp = hp(this.f25414w);
            } catch (Throwable th) {
                throw th;
            }
        }
        return fileHp;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public File[] getObbDirs() {
        if (hp() == null) {
            return super.getObbDirs();
        }
        File[] obbDirs = super.getObbDirs();
        File[] fileArr = new File[obbDirs.length];
        for (int i2 = 0; i2 < obbDirs.length; i2++) {
            fileArr[i2] = hp(new File(obbDirs[i2], hp()));
        }
        return fileArr;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public SharedPreferences getSharedPreferences(String str, int i2) {
        return (i2 != 0 || hp() == null) ? super.getSharedPreferences(str, i2) : super.getSharedPreferences(hp(str), i2);
    }

    public String hp() {
        return "pangle_com.byted.pangle";
    }

    public File l() {
        return super.getFilesDir().getParentFile();
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public boolean moveDatabaseFrom(Context context, String str) {
        if (hp() == null) {
            return super.moveDatabaseFrom(context, str);
        }
        throw new UnsupportedOperationException("Calling moveDatabaseFrom in plugins is not supported.");
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public FileInputStream openFileInput(String str) throws FileNotFoundException {
        return hp() == null ? super.openFileInput(str) : new FileInputStream(hp(getFilesDir(), str));
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public FileOutputStream openFileOutput(String str, int i2) throws FileNotFoundException {
        return (i2 != 0 || hp() == null) ? super.openFileOutput(str, i2) : new FileOutputStream(hp(getFilesDir(), str), false);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public SQLiteDatabase openOrCreateDatabase(String str, int i2, SQLiteDatabase.CursorFactory cursorFactory) {
        return (i2 != 0 || hp() == null) ? super.openOrCreateDatabase(str, i2, cursorFactory) : super.openOrCreateDatabase(hp(str), i2, cursorFactory);
    }

    private String hp(String str) {
        return hp() + "_" + str;
    }

    private static File hp(File file) {
        if (!file.exists()) {
            file.mkdirs();
        }
        return file;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public SQLiteDatabase openOrCreateDatabase(String str, int i2, SQLiteDatabase.CursorFactory cursorFactory, DatabaseErrorHandler databaseErrorHandler) {
        if (i2 == 0 && hp() != null) {
            return super.openOrCreateDatabase(hp(str), i2, cursorFactory, databaseErrorHandler);
        }
        return super.openOrCreateDatabase(str, i2, cursorFactory, databaseErrorHandler);
    }

    private static File hp(File file, String str) {
        if (str.indexOf(File.separatorChar) < 0) {
            return new File(file, str);
        }
        throw new IllegalArgumentException("File " + str + " contains a path separator");
    }
}
