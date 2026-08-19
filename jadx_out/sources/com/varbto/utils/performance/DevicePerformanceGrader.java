package com.varbto.utils.performance;

import android.app.ActivityManager;
import android.content.Context;
import android.opengl.GLES20;
import android.os.Build;
import android.os.PowerManager;
import android.os.SystemClock;
import android.util.Log;
import androidx.core.location.LocationRequestCompat;
import com.anythink.core.common.d.s;
import com.byazt.pu.TTDownloadField;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileFilter;
import java.io.FileInputStream;
import java.io.FileReader;
import java.io.InputStreamReader;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import javax.microedition.khronos.egl.EGL10;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.egl.EGLContext;
import javax.microedition.khronos.egl.EGLDisplay;
import javax.microedition.khronos.egl.EGLSurface;
import k1.f;
import k1.h;
import k1.q;

/* loaded from: classes5.dex */
public class DevicePerformanceGrader {

    /* renamed from: f, reason: collision with root package name */
    public static volatile q f50613f;

    /* renamed from: a, reason: collision with root package name */
    public final Context f50614a;

    /* renamed from: c, reason: collision with root package name */
    public PerformanceData f50616c;

    /* renamed from: d, reason: collision with root package name */
    public volatile HashMap f50617d;

    /* renamed from: e, reason: collision with root package name */
    public final Object f50618e = new Object();

    /* renamed from: b, reason: collision with root package name */
    public final b f50615b = new b(this);

    public static class AdvancedHardwareInfo {
        public int bigCoreCount;
        public float cpuTemperature = Float.NaN;
        public String eglVersion;
        public String glVersion;
        public boolean hasBigLittleArch;
        public boolean isGLES30Supported;
        public int littleCoreCount;
        public long storageSpeedMBps;
        public String supportedABIs;
        public float sustainedFps;
        public int thermalStatus;
    }

    public static class GradingResult {
        public PerformanceData data;
        public String report;
    }

    public static class PerformanceData {
        public AdvancedHardwareInfo advancedInfo;
        public int cpuCores;
        public float cpuMaxFreqMHz;
        public int cpuScore;
        public float cpuUsage;
        public String gpuModel;
        public int gpuScore;
        public int memoryScore;
        public long memoryUsage;
        public int resolutionScore;
        public long totalMemory;
        public int totalScore;
    }

    public interface PerformanceMonitorCallback {
        void onCpuUpdate(float f2, float f3);

        void onGpuUpdate(float f2);

        void onMemoryUpdate(float f2);

        void onThermalUpdate(int i2);
    }

    public DevicePerformanceGrader(Context context) {
        this.f50614a = context;
    }

    public static q a() {
        q qVar = new q();
        try {
            EGL10 egl10 = (EGL10) EGLContext.getEGL();
            EGLDisplay eGLDisplayEglGetDisplay = egl10.eglGetDisplay(EGL10.EGL_DEFAULT_DISPLAY);
            if (eGLDisplayEglGetDisplay != EGL10.EGL_NO_DISPLAY && egl10.eglInitialize(eGLDisplayEglGetDisplay, new int[2])) {
                EGLConfig[] eGLConfigArr = new EGLConfig[1];
                int[] iArr = new int[1];
                egl10.eglChooseConfig(eGLDisplayEglGetDisplay, new int[]{12339, 1, 12324, 8, 12323, 8, 12322, 8, 12321, 8, 12325, 0, 12326, 0, 12344}, eGLConfigArr, 1, iArr);
                if (iArr[0] == 0) {
                    egl10.eglChooseConfig(eGLDisplayEglGetDisplay, new int[]{12339, 1, 12344}, eGLConfigArr, 1, iArr);
                }
                if (iArr[0] > 0) {
                    EGLConfig eGLConfig = eGLConfigArr[0];
                    EGLContext eGLContext = EGL10.EGL_NO_CONTEXT;
                    EGLContext eGLContextEglCreateContext = egl10.eglCreateContext(eGLDisplayEglGetDisplay, eGLConfig, eGLContext, new int[]{12440, 2, 12344});
                    EGLSurface eGLSurfaceEglCreatePbufferSurface = egl10.eglCreatePbufferSurface(eGLDisplayEglGetDisplay, eGLConfig, new int[]{12375, 1, 12374, 1, 12344});
                    EGLSurface eGLSurface = EGL10.EGL_NO_SURFACE;
                    if (eGLSurfaceEglCreatePbufferSurface != eGLSurface && eGLContextEglCreateContext != eGLContext) {
                        if (egl10.eglMakeCurrent(eGLDisplayEglGetDisplay, eGLSurfaceEglCreatePbufferSurface, eGLSurfaceEglCreatePbufferSurface, eGLContextEglCreateContext)) {
                            qVar.f51305a = GLES20.glGetString(7937);
                            qVar.f51306b = GLES20.glGetString(7938);
                            qVar.f51307c = GLES20.glGetString(7939);
                            qVar.f51308d = true;
                            egl10.eglMakeCurrent(eGLDisplayEglGetDisplay, eGLSurface, eGLSurface, eGLContext);
                        }
                        egl10.eglDestroySurface(eGLDisplayEglGetDisplay, eGLSurfaceEglCreatePbufferSurface);
                        egl10.eglDestroyContext(eGLDisplayEglGetDisplay, eGLContextEglCreateContext);
                    }
                }
                egl10.eglTerminate(eGLDisplayEglGetDisplay);
                return qVar;
            }
            return qVar;
        } catch (Throwable th) {
            Log.e("OpenGL", "Failed to fetch GL info safely", th);
            return qVar;
        }
    }

    public static float c() {
        InputStreamReader inputStreamReader;
        BufferedReader bufferedReader;
        Throwable th;
        FileInputStream fileInputStream;
        String line;
        long j2;
        long j3;
        long jUptimeMillis;
        float f2;
        File file = f.f51284c;
        try {
            try {
                fileInputStream = new FileInputStream(f.f51284c);
                try {
                    inputStreamReader = new InputStreamReader(fileInputStream);
                    try {
                        bufferedReader = new BufferedReader(inputStreamReader);
                    } catch (Throwable th2) {
                        bufferedReader = null;
                        th = th2;
                    }
                    try {
                        line = bufferedReader.readLine();
                    } catch (Throwable th3) {
                        th = th3;
                        try {
                            th.printStackTrace();
                            if (bufferedReader != null) {
                                bufferedReader.close();
                            }
                            if (inputStreamReader != null) {
                                inputStreamReader.close();
                            }
                            if (fileInputStream != null) {
                                fileInputStream.close();
                            }
                            return i;
                        } catch (Throwable th4) {
                            if (bufferedReader != null) {
                                try {
                                    bufferedReader.close();
                                } catch (Throwable unused) {
                                    throw th4;
                                }
                            }
                            if (inputStreamReader != null) {
                                inputStreamReader.close();
                            }
                            if (fileInputStream != null) {
                                fileInputStream.close();
                            }
                            throw th4;
                        }
                    }
                } catch (Throwable th5) {
                    bufferedReader = null;
                    th = th5;
                    inputStreamReader = null;
                }
            } catch (Throwable th6) {
                inputStreamReader = null;
                bufferedReader = null;
                th = th6;
                fileInputStream = null;
            }
        } catch (Throwable unused2) {
        }
        if (line == null) {
            bufferedReader.close();
            inputStreamReader.close();
        } else {
            String[] strArrSplit = line.split("\\s+");
            if (strArrSplit.length <= 14) {
                bufferedReader.close();
                inputStreamReader.close();
            } else {
                try {
                    j2 = Long.parseLong(strArrSplit[13]) + Long.parseLong(strArrSplit[14]);
                    j3 = j2 - f.f51282a;
                    jUptimeMillis = SystemClock.uptimeMillis();
                    f2 = ((jUptimeMillis - f.f51283b) / 1000.0f) * 100.0f;
                } catch (Throwable unused3) {
                    bufferedReader.close();
                    inputStreamReader.close();
                }
                if (f2 > 0.0f) {
                    f.f51282a = j2;
                    f.f51283b = jUptimeMillis;
                    float f3 = (j3 / f2) * 100.0f;
                    int iAvailableProcessors = Runtime.getRuntime().availableProcessors();
                    if (iAvailableProcessors <= 0) {
                        iAvailableProcessors = 1;
                    }
                    int i2 = (int) (f3 / iAvailableProcessors);
                    i = i2 >= 0 ? i2 : 0;
                    if (i > 100) {
                        i = 100;
                    }
                    bufferedReader.close();
                    inputStreamReader.close();
                    fileInputStream.close();
                    return i;
                }
                bufferedReader.close();
                inputStreamReader.close();
            }
        }
        fileInputStream.close();
        return i;
    }

    public static q d() {
        if (f50613f == null) {
            synchronized (DevicePerformanceGrader.class) {
                try {
                    if (f50613f == null) {
                        f50613f = a();
                    }
                } finally {
                }
            }
        }
        return f50613f;
    }

    /* JADX WARN: Removed duplicated region for block: B:110:0x01bc  */
    /* JADX WARN: Removed duplicated region for block: B:113:0x01c4  */
    /* JADX WARN: Removed duplicated region for block: B:114:0x01c6  */
    /* JADX WARN: Removed duplicated region for block: B:118:0x01e5 A[Catch: all -> 0x0204, TryCatch #3 {all -> 0x0204, blocks: (B:115:0x01c8, B:118:0x01e5, B:120:0x01f4), top: B:246:0x01c8 }] */
    /* JADX WARN: Removed duplicated region for block: B:158:0x0275  */
    /* JADX WARN: Removed duplicated region for block: B:175:0x02c5 A[Catch: all -> 0x02ef, TRY_LEAVE, TryCatch #9 {all -> 0x02ef, blocks: (B:173:0x02ac, B:175:0x02c5), top: B:258:0x02ac }] */
    /* JADX WARN: Removed duplicated region for block: B:189:0x02f7  */
    /* JADX WARN: Removed duplicated region for block: B:214:0x0357 A[LOOP:5: B:212:0x0353->B:214:0x0357, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:217:0x0369  */
    /* JADX WARN: Removed duplicated region for block: B:218:0x036c  */
    /* JADX WARN: Removed duplicated region for block: B:244:0x027d A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:266:0x020a A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:278:0x015c A[EDGE_INSN: B:278:0x015c->B:89:0x015c BREAK  A[LOOP:2: B:81:0x014a->B:88:0x0159], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00d8  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00db A[PHI: r16
      0x00db: PHI (r16v1 java.lang.String) = (r16v0 java.lang.String), (r16v0 java.lang.String), (r16v2 java.lang.String), (r16v0 java.lang.String) binds: [B:41:0x00bd, B:43:0x00c3, B:53:0x00e6, B:48:0x00d6] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:83:0x014d  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x016f  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x018c  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x018f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void b(com.varbto.utils.performance.DevicePerformanceGrader.PerformanceData r21) {
        /*
            Method dump skipped, instructions count: 957
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.varbto.utils.performance.DevicePerformanceGrader.b(com.varbto.utils.performance.DevicePerformanceGrader$PerformanceData):void");
    }

    public int getDynamicScore() {
        return this.f50615b.a();
    }

    public GradingResult getFullPerformanceReport() {
        if (this.f50616c == null) {
            PerformanceData performanceData = new PerformanceData();
            this.f50616c = performanceData;
            performanceData.advancedInfo = new AdvancedHardwareInfo();
            b(this.f50616c);
        }
        PerformanceData performanceData2 = this.f50616c;
        performanceData2.cpuUsage = c();
        ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
        ActivityManager activityManager = (ActivityManager) this.f50614a.getSystemService(TTDownloadField.TT_ACTIVITY);
        if (activityManager != null) {
            activityManager.getMemoryInfo(memoryInfo);
        }
        performanceData2.memoryUsage = memoryInfo.totalMem - memoryInfo.availMem;
        AdvancedHardwareInfo advancedHardwareInfo = performanceData2.advancedInfo;
        advancedHardwareInfo.cpuTemperature = b();
        if (Build.VERSION.SDK_INT >= 29) {
            advancedHardwareInfo.thermalStatus = ((PowerManager) this.f50614a.getSystemService("power")).getCurrentThermalStatus();
        }
        a(this.f50616c);
        GradingResult gradingResult = new GradingResult();
        PerformanceData performanceData3 = this.f50616c;
        gradingResult.data = performanceData3;
        AdvancedHardwareInfo advancedHardwareInfo2 = performanceData3.advancedInfo;
        StringBuilder sb = new StringBuilder("=== 设备性能评分报告 ===\n");
        sb.append(String.format(Locale.getDefault(), "CPU评分: %d/30 (核心数: %d, 最大频率: %.1fMHz, 使用率: %.1f%%)\n", Integer.valueOf(performanceData3.cpuScore), Integer.valueOf(performanceData3.cpuCores), Float.valueOf(performanceData3.cpuMaxFreqMHz), Float.valueOf(performanceData3.cpuUsage)));
        sb.append(String.format("GPU评分: %d/30 (型号: %s)\n", Integer.valueOf(performanceData3.gpuScore), performanceData3.gpuModel));
        sb.append(String.format("内存评分: %d/20 (使用量: %dMB/总内存: %dMB, 使用率: %.1f%%)\n", Integer.valueOf(performanceData3.memoryScore), Long.valueOf(performanceData3.memoryUsage / 1048576), Long.valueOf(performanceData3.totalMemory / 1048576), Float.valueOf((performanceData3.memoryUsage * 100.0f) / performanceData3.totalMemory)));
        sb.append(String.format("分辨率评分: %d/20\n", Integer.valueOf(performanceData3.resolutionScore)));
        sb.append("\n=== 高级硬件信息 ===\n");
        sb.append("ABI支持: " + advancedHardwareInfo2.supportedABIs + "\n");
        String str = advancedHardwareInfo2.glVersion;
        if (str == null) {
            str = "未知";
        }
        sb.append("OpenGL版本: " + str + "\n");
        String str2 = advancedHardwareInfo2.eglVersion;
        sb.append("EGL版本: " + (str2 != null ? str2 : "未知") + "\n");
        sb.append("支持GLES3.0+: " + advancedHardwareInfo2.isGLES30Supported + "\n");
        sb.append(String.format("存储速度: %d MB/s\n", Long.valueOf(advancedHardwareInfo2.storageSpeedMBps)));
        sb.append(String.format("可持续帧率: %.1f FPS\n", Float.valueOf(advancedHardwareInfo2.sustainedFps)));
        if (!Float.isNaN(advancedHardwareInfo2.cpuTemperature)) {
            sb.append(String.format("CPU温度: %.1f°C\n", Float.valueOf(advancedHardwareInfo2.cpuTemperature)));
        }
        sb.append("大小核架构: " + (advancedHardwareInfo2.hasBigLittleArch ? "是" : "否") + "\n");
        if (advancedHardwareInfo2.hasBigLittleArch) {
            sb.append(String.format("大核数量: %d (高性能核心)\n", Integer.valueOf(advancedHardwareInfo2.bigCoreCount)));
            sb.append(String.format("小核数量: %d (高能效核心)\n", Integer.valueOf(advancedHardwareInfo2.littleCoreCount)));
        }
        sb.append("\n----------------------\n");
        sb.append(String.format("总分: %d/100\n", Integer.valueOf(performanceData3.totalScore)));
        int i2 = performanceData3.totalScore;
        sb.append("设备等级: " + (i2 >= 80 ? "旗舰级" : i2 >= 60 ? "高端" : i2 >= 40 ? "中端" : "低端") + "\n");
        int i3 = performanceData3.totalScore;
        sb.append("优化建议: ".concat(i3 >= 80 ? "可以启用所有高级图形特效，包括高清纹理、复杂着色器、后处理效果等" : i3 >= 60 ? "建议启用部分特效，但降低抗锯齿等级或阴影质量" : i3 >= 40 ? "建议使用中等画质设置，禁用抗锯齿和部分后处理效果" : "建议使用最低画质设置，禁用所有非必要特效"));
        gradingResult.report = sb.toString();
        if (h.f51286a) {
            int i4 = gradingResult.data.totalScore;
        }
        return gradingResult;
    }

    public b getMonitor() {
        return this.f50615b;
    }

    public Map<String, Object> getStaticPerformanceDataMap() {
        if (this.f50617d == null) {
            synchronized (this.f50618e) {
                try {
                    if (this.f50617d == null) {
                        if (this.f50616c == null) {
                            PerformanceData performanceData = new PerformanceData();
                            this.f50616c = performanceData;
                            performanceData.advancedInfo = new AdvancedHardwareInfo();
                            b(this.f50616c);
                        }
                        a(this.f50616c);
                        HashMap map = new HashMap();
                        map.put("cpu_cores", Integer.valueOf(this.f50616c.cpuCores));
                        map.put("cpu_max_freq_mhz", Float.valueOf(this.f50616c.cpuMaxFreqMHz));
                        map.put("cpu_score", Integer.valueOf(this.f50616c.cpuScore));
                        String str = this.f50616c.gpuModel;
                        if (str == null) {
                            str = "";
                        }
                        map.put("gpu_model", str);
                        map.put("gpu_score", Integer.valueOf(this.f50616c.gpuScore));
                        map.put("total_memory", Long.valueOf(this.f50616c.totalMemory));
                        map.put("memory_score", Integer.valueOf(this.f50616c.memoryScore));
                        map.put("resolution_score", Integer.valueOf(this.f50616c.resolutionScore));
                        map.put(s.f2927k, Integer.valueOf(this.f50616c.totalScore));
                        AdvancedHardwareInfo advancedHardwareInfo = this.f50616c.advancedInfo;
                        String str2 = advancedHardwareInfo.supportedABIs;
                        if (str2 == null) {
                            str2 = "";
                        }
                        map.put("supported_abis", str2);
                        String str3 = advancedHardwareInfo.glVersion;
                        if (str3 == null) {
                            str3 = "";
                        }
                        map.put("gl_version", str3);
                        String str4 = advancedHardwareInfo.eglVersion;
                        if (str4 == null) {
                            str4 = "";
                        }
                        map.put("egl_version", str4);
                        map.put("is_gles30_supported", Boolean.valueOf(advancedHardwareInfo.isGLES30Supported));
                        map.put("sustained_fps", Float.valueOf(advancedHardwareInfo.sustainedFps));
                        map.put("storage_speed_mbps", Long.valueOf(advancedHardwareInfo.storageSpeedMBps));
                        map.put("has_big_little_arch", Boolean.valueOf(advancedHardwareInfo.hasBigLittleArch));
                        map.put("big_core_count", Integer.valueOf(advancedHardwareInfo.bigCoreCount));
                        map.put("little_core_count", Integer.valueOf(advancedHardwareInfo.littleCoreCount));
                        this.f50617d = map;
                        if (h.f51286a) {
                            int i2 = this.f50616c.totalScore;
                        }
                    }
                } finally {
                }
            }
        }
        b bVar = this.f50615b;
        float f2 = bVar != null ? bVar.f50626e : 0.0f;
        b bVar2 = this.f50615b;
        float f3 = bVar2 != null ? bVar2.f50627f : 0.0f;
        b bVar3 = this.f50615b;
        int i3 = bVar3 != null ? bVar3.f50628g : 0;
        PerformanceData performanceData2 = this.f50616c;
        long j2 = performanceData2 != null ? performanceData2.totalMemory : 0L;
        synchronized (this.f50618e) {
            this.f50617d.put("c_ra", Float.valueOf(f2));
            this.f50617d.put("memory_usage", Long.valueOf((long) (j2 * f3)));
            this.f50617d.put("mem_ra", Float.valueOf(f3 * 100.0f));
            this.f50617d.put("thermal_status", Integer.valueOf(i3));
        }
        return this.f50617d;
    }

    public int getTotalScore() {
        if (this.f50616c == null) {
            PerformanceData performanceData = new PerformanceData();
            this.f50616c = performanceData;
            performanceData.advancedInfo = new AdvancedHardwareInfo();
            b(this.f50616c);
        }
        PerformanceData performanceData2 = this.f50616c;
        performanceData2.cpuUsage = c();
        ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
        ActivityManager activityManager = (ActivityManager) this.f50614a.getSystemService(TTDownloadField.TT_ACTIVITY);
        if (activityManager != null) {
            activityManager.getMemoryInfo(memoryInfo);
        }
        performanceData2.memoryUsage = memoryInfo.totalMem - memoryInfo.availMem;
        AdvancedHardwareInfo advancedHardwareInfo = performanceData2.advancedInfo;
        advancedHardwareInfo.cpuTemperature = b();
        if (Build.VERSION.SDK_INT >= 29) {
            advancedHardwareInfo.thermalStatus = ((PowerManager) this.f50614a.getSystemService("power")).getCurrentThermalStatus();
        }
        a(this.f50616c);
        if (h.f51286a) {
            int i2 = this.f50616c.totalScore;
        }
        return this.f50616c.totalScore;
    }

    public boolean isHighConsumption() {
        int i2;
        b bVar = this.f50615b;
        bVar.getClass();
        if (System.currentTimeMillis() < bVar.f50624c || bVar.d()) {
            return true;
        }
        if (!bVar.f50623b && System.currentTimeMillis() - bVar.f50625d > 1000) {
            bVar.e();
        }
        int iB = b.b(bVar.f50626e);
        int iC = b.c(bVar.f50627f);
        switch (bVar.f50628g) {
            case 1:
                i2 = 80;
                break;
            case 2:
                i2 = 50;
                break;
            case 3:
                i2 = 25;
                break;
            case 4:
                i2 = 10;
                break;
            case 5:
                i2 = 5;
                break;
            case 6:
                i2 = 0;
                break;
            default:
                i2 = 100;
                break;
        }
        int i3 = bVar.f50630i;
        return iB <= i3 || iC <= i3 || i2 <= i3;
    }

    public void startMonitoring(PerformanceMonitorCallback performanceMonitorCallback, long j2) {
        b bVar = this.f50615b;
        if (bVar.f50623b) {
            return;
        }
        bVar.f50623b = true;
        bVar.f50622a.post(new a(bVar, performanceMonitorCallback, j2));
    }

    public void stopMonitoring() {
        b bVar = this.f50615b;
        if (h.f51286a) {
            bVar.getClass();
        }
        bVar.f50623b = false;
        bVar.f50622a.removeCallbacksAndMessages(null);
    }

    public static void a(AdvancedHardwareInfo advancedHardwareInfo) {
        BufferedReader bufferedReader;
        try {
            File[] fileArrListFiles = new File("/sys/devices/system/cpu/").listFiles(new FileFilter() { // from class: n1.b
                @Override // java.io.FileFilter
                public final boolean accept(File file) {
                    return file.getName().matches("cpu[0-9]+");
                }
            });
            if (fileArrListFiles != null && fileArrListFiles.length != 0) {
                HashSet hashSet = new HashSet();
                for (File file : fileArrListFiles) {
                    File file2 = new File(file, "cpufreq/cpuinfo_max_freq");
                    if (file2.exists()) {
                        bufferedReader = new BufferedReader(new FileReader(file2));
                        try {
                            String line = bufferedReader.readLine();
                            if (line != null) {
                                try {
                                    hashSet.add(Long.valueOf(Long.parseLong(line)));
                                } catch (Throwable unused) {
                                }
                            }
                            bufferedReader.close();
                        } finally {
                        }
                    }
                }
                boolean z2 = hashSet.size() > 1;
                advancedHardwareInfo.hasBigLittleArch = z2;
                if (z2) {
                    Iterator it = hashSet.iterator();
                    long jLongValue = Long.MIN_VALUE;
                    long jLongValue2 = LocationRequestCompat.PASSIVE_INTERVAL;
                    while (it.hasNext()) {
                        Long l2 = (Long) it.next();
                        if (l2 != null) {
                            if (l2.longValue() > jLongValue) {
                                jLongValue = l2.longValue();
                            }
                            if (l2.longValue() < jLongValue2) {
                                jLongValue2 = l2.longValue();
                            }
                        }
                    }
                    long j2 = (jLongValue + jLongValue2) / 2;
                    for (File file3 : fileArrListFiles) {
                        File file4 = new File(file3, "cpufreq/cpuinfo_max_freq");
                        if (file4.exists()) {
                            bufferedReader = new BufferedReader(new FileReader(file4));
                            try {
                                String line2 = bufferedReader.readLine();
                                if (line2 != null) {
                                    try {
                                        if (Long.parseLong(line2) >= j2) {
                                            advancedHardwareInfo.bigCoreCount++;
                                        } else {
                                            advancedHardwareInfo.littleCoreCount++;
                                        }
                                    } catch (Throwable unused2) {
                                    }
                                }
                                bufferedReader.close();
                            } finally {
                            }
                        }
                    }
                    return;
                }
                return;
            }
            advancedHardwareInfo.hasBigLittleArch = false;
        } catch (Throwable th) {
            if (h.f51286a) {
                Log.e("CPU", "Failed to detect big.LITTLE architecture", th);
            }
            advancedHardwareInfo.hasBigLittleArch = false;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x005e  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0063  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x008c  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0098  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00a2  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00a8  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x0115  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0118  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x011d  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x0141  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x0144  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x014c  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x0157  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x0159  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(com.varbto.utils.performance.DevicePerformanceGrader.PerformanceData r14) {
        /*
            Method dump skipped, instructions count: 381
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.varbto.utils.performance.DevicePerformanceGrader.a(com.varbto.utils.performance.DevicePerformanceGrader$PerformanceData):void");
    }

    public static float b() {
        try {
            BufferedReader bufferedReader = new BufferedReader(new FileReader("/sys/class/thermal/thermal_zone0/temp"));
            try {
                float f2 = Float.parseFloat(bufferedReader.readLine()) / 1000.0f;
                bufferedReader.close();
                return f2;
            } finally {
            }
        } catch (Throwable unused) {
            return Float.NaN;
        }
    }
}
