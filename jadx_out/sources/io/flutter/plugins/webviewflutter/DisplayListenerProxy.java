package io.flutter.plugins.webviewflutter;

import android.hardware.display.DisplayManager;
import android.os.Build;
import java.lang.reflect.Field;
import java.util.ArrayList;

/* loaded from: classes5.dex */
class DisplayListenerProxy {
    private static final String TAG = "DisplayListenerProxy";
    private ArrayList<DisplayManager.DisplayListener> listenersBeforeWebView;

    private static ArrayList<DisplayManager.DisplayListener> yoinkDisplayListeners(DisplayManager displayManager) throws IllegalAccessException, NoSuchFieldException, SecurityException, IllegalArgumentException {
        if (Build.VERSION.SDK_INT >= 28) {
            return new ArrayList<>();
        }
        try {
            Field declaredField = DisplayManager.class.getDeclaredField("mGlobal");
            declaredField.setAccessible(true);
            Object obj = declaredField.get(displayManager);
            Field declaredField2 = obj.getClass().getDeclaredField("mDisplayListeners");
            declaredField2.setAccessible(true);
            ArrayList arrayList = (ArrayList) declaredField2.get(obj);
            ArrayList<DisplayManager.DisplayListener> arrayList2 = new ArrayList<>();
            int size = arrayList.size();
            Field field = null;
            int i2 = 0;
            while (i2 < size) {
                Object obj2 = arrayList.get(i2);
                i2++;
                if (field == null) {
                    field = obj2.getClass().getField("mListener");
                    field.setAccessible(true);
                }
                arrayList2.add((DisplayManager.DisplayListener) field.get(obj2));
            }
            return arrayList2;
        } catch (IllegalAccessException | NoSuchFieldException e2) {
            e2.toString();
            return new ArrayList<>();
        }
    }

    public void onPostWebViewInitialization(final DisplayManager displayManager) throws IllegalAccessException, NoSuchFieldException, SecurityException, IllegalArgumentException {
        final ArrayList<DisplayManager.DisplayListener> arrayListYoinkDisplayListeners = yoinkDisplayListeners(displayManager);
        arrayListYoinkDisplayListeners.removeAll(this.listenersBeforeWebView);
        if (arrayListYoinkDisplayListeners.isEmpty()) {
            return;
        }
        int size = arrayListYoinkDisplayListeners.size();
        int i2 = 0;
        while (i2 < size) {
            DisplayManager.DisplayListener displayListener = arrayListYoinkDisplayListeners.get(i2);
            i2++;
            displayManager.unregisterDisplayListener(displayListener);
            displayManager.registerDisplayListener(new DisplayManager.DisplayListener() { // from class: io.flutter.plugins.webviewflutter.DisplayListenerProxy.1
                @Override // android.hardware.display.DisplayManager.DisplayListener
                public void onDisplayAdded(int i3) {
                    ArrayList arrayList = arrayListYoinkDisplayListeners;
                    int size2 = arrayList.size();
                    int i4 = 0;
                    while (i4 < size2) {
                        Object obj = arrayList.get(i4);
                        i4++;
                        ((DisplayManager.DisplayListener) obj).onDisplayAdded(i3);
                    }
                }

                @Override // android.hardware.display.DisplayManager.DisplayListener
                public void onDisplayChanged(int i3) {
                    if (displayManager.getDisplay(i3) == null) {
                        return;
                    }
                    ArrayList arrayList = arrayListYoinkDisplayListeners;
                    int size2 = arrayList.size();
                    int i4 = 0;
                    while (i4 < size2) {
                        Object obj = arrayList.get(i4);
                        i4++;
                        ((DisplayManager.DisplayListener) obj).onDisplayChanged(i3);
                    }
                }

                @Override // android.hardware.display.DisplayManager.DisplayListener
                public void onDisplayRemoved(int i3) {
                    ArrayList arrayList = arrayListYoinkDisplayListeners;
                    int size2 = arrayList.size();
                    int i4 = 0;
                    while (i4 < size2) {
                        Object obj = arrayList.get(i4);
                        i4++;
                        ((DisplayManager.DisplayListener) obj).onDisplayRemoved(i3);
                    }
                }
            }, null);
        }
    }

    public void onPreWebViewInitialization(DisplayManager displayManager) {
        this.listenersBeforeWebView = yoinkDisplayListeners(displayManager);
    }
}
