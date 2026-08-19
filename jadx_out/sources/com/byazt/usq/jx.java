package com.byazt.usq;

import android.hardware.SensorManager;
import androidx.annotation.NonNull;
import com.umeng.analytics.pro.bv;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 1249, 30})
/* loaded from: classes3.dex */
public class jx {
    public static float[] hp(List<Float> list, List<Float> list2, List<Float> list3, List<Float> list4, List<Float> list5, List<Float> list6) {
        float f2;
        float f3;
        char c2;
        char c3;
        int iMin = Math.min(list.size(), list4.size());
        float degrees = 0.0f;
        float degrees2 = 0.0f;
        float degrees3 = 0.0f;
        for (int i2 = 0; i2 < iMin; i2++) {
            Float f4 = list.get(i2);
            Float f5 = list2.get(i2);
            Float f6 = list3.get(i2);
            Float f7 = list4.get(i2);
            c2 = 0;
            Float f8 = list5.get(i2);
            c3 = 2;
            Float f9 = list6.get(i2);
            if (f4 == null || f5 == null || f6 == null || f7 == null || f8 == null || f9 == null) {
                f2 = degrees;
                f3 = degrees2;
                break;
            }
            float[] fArr = new float[9];
            SensorManager.getRotationMatrix(fArr, null, new float[]{f4.floatValue(), f5.floatValue(), f6.floatValue()}, new float[]{f7.floatValue(), f8.floatValue(), f9.floatValue()});
            SensorManager.getOrientation(fArr, new float[3]);
            degrees += (((float) Math.toDegrees(r7[0])) + 360.0f) % 360.0f;
            degrees2 += (((float) Math.toDegrees(r7[1])) + 360.0f) % 360.0f;
            degrees3 += (((float) Math.toDegrees(r7[2])) + 360.0f) % 360.0f;
        }
        f2 = degrees;
        f3 = degrees2;
        c2 = 0;
        c3 = 2;
        if (iMin == 0) {
            return new float[]{0.0f, 0.0f, 0.0f};
        }
        float f10 = iMin;
        float f11 = f2 / f10;
        float f12 = f3 / f10;
        float f13 = degrees3 / f10;
        float[] fArr2 = new float[3];
        fArr2[c2] = f11;
        fArr2[1] = f12;
        fArr2[c3] = f13;
        return fArr2;
    }

    @NonNull
    public static int[][] hp(List<JSONObject> list, long j2, long j3) throws JSONException {
        int size = list.size();
        double[] dArr = new double[size];
        double[] dArr2 = new double[size];
        double[] dArr3 = new double[size];
        for (int i2 = 0; i2 < size; i2++) {
            JSONArray jSONArrayOptJSONArray = list.get(i2).optJSONArray("val");
            if (jSONArrayOptJSONArray != null && jSONArrayOptJSONArray.length() == 3) {
                dArr[i2] = jSONArrayOptJSONArray.getDouble(0);
                dArr2[i2] = jSONArrayOptJSONArray.getDouble(1);
                dArr3[i2] = jSONArrayOptJSONArray.getDouble(2);
            }
        }
        return new int[][]{hp(dArr, j2), hp(dArr2, j3), hp(dArr3, j3)};
    }

    @NonNull
    public static int[] hp(double[] dArr, long j2) {
        if (j2 > 0 && j2 <= 360) {
            int[] iArr = new int[(int) (360 / j2)];
            for (double d2 : dArr) {
                int i2 = (int) (d2 / j2);
                iArr[i2] = iArr[i2] + 1;
            }
            return iArr;
        }
        return new int[0];
    }

    @NonNull
    public static int[] hp(LinkedList<JSONObject> linkedList, int i2) {
        int[] iArr = new int[i2];
        if (linkedList != null && !linkedList.isEmpty()) {
            int iOptLong = (int) (((linkedList.get(linkedList.size() - 1).optLong(bv.aI, 0L) / 1000) / 60) / 60);
            Iterator<JSONObject> it = linkedList.iterator();
            while (it.hasNext()) {
                int iOptLong2 = iOptLong - ((int) (((it.next().optLong(bv.aI, 0L) / 1000) / 60) / 60));
                if (iOptLong2 >= 0 && iOptLong2 < i2) {
                    iArr[iOptLong2] = iArr[iOptLong2] + 1;
                }
            }
        }
        return iArr;
    }
}
