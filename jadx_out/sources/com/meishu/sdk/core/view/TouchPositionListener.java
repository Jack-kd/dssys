package com.meishu.sdk.core.view;

import android.view.MotionEvent;
import android.view.View;
import com.meishu.sdk.core.AdSdk;
import com.meishu.sdk.core.ad.IAd;
import com.meishu.sdk.core.utils.m;
import java.sql.Timestamp;

/* loaded from: classes4.dex */
public class TouchPositionListener {
    private static final int CLICK_THRESHOLD = 5;
    private static final String TAG = "TouchPositionListener";
    private IAd ad;
    private float downX;
    private float downY;

    public static class TouchPosition {
        private Timestamp downTime;
        private int downX;
        private int downY;
        private Timestamp touchTime;
        private Timestamp upTime;
        private int upX;
        private int upY;

        public Timestamp getDownTime() {
            return this.downTime;
        }

        public int getDownX() {
            try {
                return (int) m.b(AdSdk.getContext(), this.downX);
            } catch (Exception e2) {
                e2.printStackTrace();
                return 0;
            }
        }

        public int getDownY() {
            try {
                return (int) m.b(AdSdk.getContext(), this.downY);
            } catch (Exception e2) {
                e2.printStackTrace();
                return 0;
            }
        }

        public Timestamp getTouchTime() {
            return this.touchTime;
        }

        public Timestamp getUpTime() {
            return this.upTime;
        }

        public int getUpX() {
            try {
                return (int) m.b(AdSdk.getContext(), this.upX);
            } catch (Exception e2) {
                e2.printStackTrace();
                return 0;
            }
        }

        public int getUpY() {
            try {
                return (int) m.b(AdSdk.getContext(), this.upY);
            } catch (Exception e2) {
                e2.printStackTrace();
                return 0;
            }
        }

        public void setDownTime(Timestamp timestamp) {
            this.downTime = timestamp;
        }

        public void setDownX(int i2) {
            this.downX = i2;
        }

        public void setDownY(int i2) {
            this.downY = i2;
        }

        public void setTouchTime(Timestamp timestamp) {
            this.touchTime = timestamp;
        }

        public void setUpTime(Timestamp timestamp) {
            this.upTime = timestamp;
        }

        public void setUpX(int i2) {
            this.upX = i2;
        }

        public void setUpY(int i2) {
            this.upY = i2;
        }

        public String toString() {
            StringBuilder sbA = com.meishu.sdk.activity.a.a("{downX: ");
            sbA.append(this.downX);
            sbA.append(", downY: ");
            sbA.append(this.downY);
            sbA.append(", upX: ");
            sbA.append(this.upX);
            sbA.append(", upY: ");
            sbA.append(this.upY);
            sbA.append(", touchTime: ");
            sbA.append(this.touchTime);
            sbA.append("}");
            return sbA.toString();
        }
    }

    public TouchPositionListener(IAd iAd) {
        this.ad = iAd;
    }

    public boolean isClickEvent(float f2, float f3) {
        return Math.abs(f2 - this.downX) < 5.0f && Math.abs(f3 - this.downY) < 5.0f;
    }

    public boolean onTouch(View view, MotionEvent motionEvent) {
        try {
            TouchPosition touchPosition = this.ad.getTouchData().getTouchPosition();
            if (touchPosition == null) {
                touchPosition = new TouchPosition();
                this.ad.getTouchData().setTouchPosition(touchPosition);
            }
            if (motionEvent.getAction() != 0) {
                if (motionEvent.getAction() != 1) {
                    return false;
                }
                touchPosition.upX = (int) motionEvent.getX();
                touchPosition.upY = (int) motionEvent.getY();
                touchPosition.upTime = new Timestamp(System.currentTimeMillis());
                return false;
            }
            touchPosition.downX = (int) motionEvent.getX();
            touchPosition.downY = (int) motionEvent.getY();
            Timestamp timestamp = new Timestamp(System.currentTimeMillis());
            touchPosition.touchTime = timestamp;
            touchPosition.downTime = timestamp;
            this.downX = motionEvent.getX();
            this.downY = motionEvent.getY();
            return false;
        } catch (Exception e2) {
            e2.printStackTrace();
            return false;
        }
    }
}
