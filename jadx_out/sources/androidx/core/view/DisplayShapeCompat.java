package androidx.core.view;

import android.graphics.Matrix;
import android.graphics.Path;
import android.view.DisplayShape;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.core.graphics.PathParser;
import java.util.Objects;

/* loaded from: classes.dex */
public final class DisplayShapeCompat {

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    static final DisplayShapeCompat EMPTY = new DisplayShapeCompat("", 0, 0, 1.0f, 0, 0, 0, 1.0f);
    private static final String TAG = "DisplayShapeCompat";
    private final Impl mImpl;

    public interface Impl {
        Path getPath();

        @RequiresApi(34)
        DisplayShape getPlatformDisplayShape();
    }

    @RequiresApi(34)
    public static class Impl34 implements Impl {
        private final DisplayShape mPlatformDisplayShape;

        public Impl34(DisplayShape displayShape) {
            this.mPlatformDisplayShape = displayShape;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof Impl34) {
                return Objects.equals(this.mPlatformDisplayShape, ((Impl34) obj).mPlatformDisplayShape);
            }
            return false;
        }

        @Override // androidx.core.view.DisplayShapeCompat.Impl
        public Path getPath() {
            return this.mPlatformDisplayShape.getPath();
        }

        @Override // androidx.core.view.DisplayShapeCompat.Impl
        public DisplayShape getPlatformDisplayShape() {
            return this.mPlatformDisplayShape;
        }

        public int hashCode() {
            return Objects.hashCode(this.mPlatformDisplayShape);
        }

        public String toString() {
            return "DisplayShapeCompat{mPlatformDisplayShape=" + this.mPlatformDisplayShape + '}';
        }
    }

    public static class ImplBase implements Impl {
        private Path mCachedPath;
        private final int mDisplayHeight;
        private final String mDisplayShapeSpec;
        private final int mDisplayWidth;
        private final int mOffsetX;
        private final int mOffsetY;
        private final float mPhysicalPixelDisplaySizeRatio;
        private final int mRotation;
        private final float mScale;

        public ImplBase(String str, int i2, int i3, float f2, int i4, int i5, int i6, float f3) {
            this.mDisplayShapeSpec = str;
            this.mDisplayWidth = i2;
            this.mDisplayHeight = i3;
            this.mPhysicalPixelDisplaySizeRatio = f2;
            this.mRotation = i4;
            this.mOffsetX = i5;
            this.mOffsetY = i6;
            this.mScale = f3;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ImplBase)) {
                return false;
            }
            ImplBase implBase = (ImplBase) obj;
            return Objects.equals(this.mDisplayShapeSpec, implBase.mDisplayShapeSpec) && this.mDisplayWidth == implBase.mDisplayWidth && this.mDisplayHeight == implBase.mDisplayHeight && this.mPhysicalPixelDisplaySizeRatio == implBase.mPhysicalPixelDisplaySizeRatio && this.mRotation == implBase.mRotation && this.mOffsetX == implBase.mOffsetX && this.mOffsetY == implBase.mOffsetY && this.mScale == implBase.mScale;
        }

        @Override // androidx.core.view.DisplayShapeCompat.Impl
        public Path getPath() {
            float f2;
            float f3;
            float f4;
            float f5;
            Path path = this.mCachedPath;
            if (path != null) {
                return path;
            }
            String str = this.mDisplayShapeSpec;
            if (str == null || str.isEmpty()) {
                return new Path();
            }
            try {
                Path pathCreatePathFromPathData = PathParser.createPathFromPathData(this.mDisplayShapeSpec);
                if (!pathCreatePathFromPathData.isEmpty()) {
                    Matrix matrix = new Matrix();
                    int i2 = this.mRotation;
                    if (i2 != 0) {
                        float f6 = 0.0f;
                        if (i2 != 1) {
                            if (i2 == 2) {
                                f6 = this.mDisplayWidth;
                                f4 = this.mDisplayHeight;
                                f5 = 180.0f;
                            } else if (i2 != 3) {
                                f2 = 0.0f;
                                f3 = 0.0f;
                            } else {
                                f4 = this.mDisplayHeight;
                                f5 = 270.0f;
                            }
                            float f7 = f5;
                            f3 = f4;
                            f2 = f6;
                            f6 = f7;
                        } else {
                            f2 = this.mDisplayWidth;
                            f6 = 90.0f;
                            f3 = 0.0f;
                        }
                        matrix.preRotate(f6, f2, f3);
                    }
                    float f8 = this.mPhysicalPixelDisplaySizeRatio;
                    if (f8 != 1.0f) {
                        matrix.preScale(f8, f8);
                    }
                    int i3 = this.mOffsetX;
                    if (i3 != 0 || this.mOffsetY != 0) {
                        matrix.postTranslate(i3, this.mOffsetY);
                    }
                    float f9 = this.mScale;
                    if (f9 != 1.0f) {
                        matrix.postScale(f9, f9);
                    }
                    pathCreatePathFromPathData.transform(matrix);
                }
                this.mCachedPath = pathCreatePathFromPathData;
                return pathCreatePathFromPathData;
            } catch (RuntimeException e2) {
                throw new IllegalArgumentException("Failed to parse DisplayShapeCompat path data: " + this.mDisplayShapeSpec, e2);
            }
        }

        @Override // androidx.core.view.DisplayShapeCompat.Impl
        @RequiresApi(34)
        public DisplayShape getPlatformDisplayShape() {
            return null;
        }

        public int hashCode() {
            return Objects.hash(this.mDisplayShapeSpec, Integer.valueOf(this.mDisplayWidth), Integer.valueOf(this.mDisplayHeight), Float.valueOf(this.mPhysicalPixelDisplaySizeRatio), Integer.valueOf(this.mRotation), Integer.valueOf(this.mOffsetX), Integer.valueOf(this.mOffsetY), Float.valueOf(this.mScale));
        }

        public String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append("DisplayShapeCompat{ spec=");
            String str = this.mDisplayShapeSpec;
            sb.append(str != null ? Integer.valueOf(str.hashCode()) : "null");
            sb.append(" displayWidth=");
            sb.append(this.mDisplayWidth);
            sb.append(" displayHeight=");
            sb.append(this.mDisplayHeight);
            sb.append(" physicalPixelDisplaySizeRatio=");
            sb.append(this.mPhysicalPixelDisplaySizeRatio);
            sb.append(" rotation=");
            sb.append(this.mRotation);
            sb.append(" offsetX=");
            sb.append(this.mOffsetX);
            sb.append(" offsetY=");
            sb.append(this.mOffsetY);
            sb.append(" scale=");
            sb.append(this.mScale);
            sb.append("}");
            return sb.toString();
        }
    }

    @RequiresApi(34)
    private DisplayShapeCompat(DisplayShape displayShape) {
        this.mImpl = new Impl34(displayShape);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public static DisplayShapeCompat create(String str, float f2, int i2, int i3) {
        return new DisplayShapeCompat(str, i2, i3, f2, 0, 0, 0, 1.0f);
    }

    private static String createSpecString(int i2, int i3, boolean z2, int i4, int i5, int i6, int i7) {
        if (z2) {
            int i8 = i2 / 2;
            int i9 = i3 / 2;
            return "M0," + i9 + " A" + i8 + "," + i9 + " 0 1,1 " + i2 + "," + i9 + " A" + i8 + "," + i9 + " 0 1,1 0," + i9 + " Z";
        }
        StringBuilder sb = new StringBuilder();
        int iMin = Math.min(i2 / 2, i3 / 2);
        int iMin2 = Math.min(iMin, i4);
        int iMin3 = Math.min(iMin, i5);
        int iMin4 = Math.min(iMin, i6);
        int iMin5 = Math.min(iMin, i7);
        sb.append("M ");
        sb.append(iMin2);
        sb.append(",0");
        sb.append(" L ");
        sb.append(i2 - iMin3);
        sb.append(",0");
        if (iMin3 > 0) {
            sb.append(" A ");
            sb.append(iMin3);
            sb.append(",");
            sb.append(iMin3);
            sb.append(" 0 0,1 ");
            sb.append(i2);
            sb.append(",");
            sb.append(iMin3);
        }
        sb.append(" L ");
        sb.append(i2);
        sb.append(",");
        sb.append(i3 - iMin4);
        if (iMin4 > 0) {
            sb.append(" A ");
            sb.append(iMin4);
            sb.append(",");
            sb.append(iMin4);
            sb.append(" 0 0,1 ");
            sb.append(i2 - iMin4);
            sb.append(",");
            sb.append(i3);
        }
        sb.append(" L ");
        sb.append(iMin5);
        sb.append(",");
        sb.append(i3);
        if (iMin5 > 0) {
            sb.append(" A ");
            sb.append(iMin5);
            sb.append(",");
            sb.append(iMin5);
            sb.append(" 0 0,1 ");
            sb.append(0);
            sb.append(",");
            sb.append(i3 - iMin5);
        }
        if (iMin2 > 0) {
            sb.append(" L ");
            sb.append(0);
            sb.append(",");
            sb.append(iMin2);
            sb.append(" A ");
            sb.append(iMin2);
            sb.append(",");
            sb.append(iMin2);
            sb.append(" 0 0,1 ");
            sb.append(iMin2);
            sb.append(",");
            sb.append(0);
        }
        sb.append(" Z");
        return sb.toString();
    }

    @RequiresApi(34)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public static DisplayShapeCompat toDisplayShapeCompat(DisplayShape displayShape) {
        if (displayShape == null) {
            return null;
        }
        return new DisplayShapeCompat(displayShape);
    }

    @RequiresApi(34)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public static DisplayShape toPlatformDisplayShape(DisplayShapeCompat displayShapeCompat) {
        if (displayShapeCompat == null) {
            return null;
        }
        return displayShapeCompat.mImpl.getPlatformDisplayShape();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof DisplayShapeCompat) {
            return Objects.equals(this.mImpl, ((DisplayShapeCompat) obj).mImpl);
        }
        return false;
    }

    public Path getPath() {
        return this.mImpl.getPath();
    }

    public int hashCode() {
        return Objects.hashCode(this.mImpl);
    }

    public String toString() {
        return this.mImpl.toString();
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public static DisplayShapeCompat create(int i2, int i3, boolean z2, int i4, int i5, int i6, int i7) {
        return new DisplayShapeCompat(createSpecString(i2, i3, z2, i4, i5, i6, i7), i2, i3, 1.0f, 0, 0, 0, 1.0f);
    }

    private DisplayShapeCompat(String str, int i2, int i3, float f2, int i4, int i5, int i6, float f3) {
        this.mImpl = new ImplBase(str, i2, i3, f2, i4, i5, i6, f3);
    }
}
