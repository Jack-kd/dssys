package com.sigmob.sdk.nativead;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.GradientDrawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import java.util.ArrayList;
import java.util.List;

/* renamed from: com.sigmob.sdk.nativead.q, reason: case insensitive filesystem */
/* loaded from: classes4.dex */
public class C1361q extends ViewGroup {

    /* renamed from: a, reason: collision with root package name */
    private final int f38432a;

    /* renamed from: b, reason: collision with root package name */
    private final int f38433b;

    /* renamed from: c, reason: collision with root package name */
    private final int f38434c;

    /* renamed from: d, reason: collision with root package name */
    private final int f38435d;

    /* renamed from: e, reason: collision with root package name */
    private final float f38436e;

    /* renamed from: f, reason: collision with root package name */
    private final float f38437f;

    /* renamed from: g, reason: collision with root package name */
    private final float f38438g;

    /* renamed from: h, reason: collision with root package name */
    private final float f38439h;

    /* renamed from: i, reason: collision with root package name */
    private final float f38440i;

    /* renamed from: j, reason: collision with root package name */
    private final int f38441j;

    /* renamed from: k, reason: collision with root package name */
    private final int f38442k;

    /* renamed from: l, reason: collision with root package name */
    private final boolean f38443l;

    /* renamed from: m, reason: collision with root package name */
    private final int f38444m;

    /* renamed from: n, reason: collision with root package name */
    private final int f38445n;

    /* renamed from: o, reason: collision with root package name */
    private final float f38446o;

    /* renamed from: p, reason: collision with root package name */
    private final int f38447p;

    /* renamed from: q, reason: collision with root package name */
    private final int f38448q;

    /* renamed from: r, reason: collision with root package name */
    private final int f38449r;

    /* renamed from: s, reason: collision with root package name */
    private final int f38450s;

    /* renamed from: t, reason: collision with root package name */
    private final boolean f38451t;

    /* renamed from: u, reason: collision with root package name */
    private boolean f38452u;

    /* renamed from: v, reason: collision with root package name */
    private final float[] f38453v;

    /* renamed from: w, reason: collision with root package name */
    private e f38454w;

    /* renamed from: x, reason: collision with root package name */
    private final a f38455x;

    /* renamed from: y, reason: collision with root package name */
    private final int f38456y;

    /* renamed from: com.sigmob.sdk.nativead.q$a */
    public class a implements View.OnClickListener {
        public a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            int selectedIndex;
            if (C1361q.this.f38443l) {
                b bVar = (b) view;
                b selectedItem = C1361q.this.getSelectedItem();
                int i2 = 0;
                if (C1361q.this.f38451t) {
                    bVar.a(!bVar.f38459b);
                    int childCount = C1361q.this.getChildCount();
                    while (true) {
                        if (i2 >= childCount) {
                            selectedIndex = -1;
                            break;
                        } else {
                            if (C1361q.this.b(i2) == bVar) {
                                selectedIndex = i2;
                                break;
                            }
                            i2++;
                        }
                    }
                } else {
                    if (selectedItem != null) {
                        selectedItem.a(false);
                    }
                    bVar.a(true);
                    selectedIndex = C1361q.this.getSelectedIndex();
                }
                if (C1361q.this.f38454w != null) {
                    C1361q.this.f38454w.onItemClick(selectedIndex, bVar.getText().toString());
                }
            }
        }
    }

    /* renamed from: com.sigmob.sdk.nativead.q$b */
    public class b extends TextView {

        /* renamed from: b, reason: collision with root package name */
        private boolean f38459b;

        /* renamed from: c, reason: collision with root package name */
        private final Paint f38460c;

        /* renamed from: d, reason: collision with root package name */
        private final Rect f38461d;

        public b(Context context, CharSequence charSequence) {
            super(context);
            this.f38459b = false;
            Paint paint = new Paint(1);
            this.f38460c = paint;
            this.f38461d = new Rect();
            paint.setStyle(Paint.Style.FILL);
            setPadding(C1361q.this.f38449r, C1361q.this.f38450s, C1361q.this.f38449r, C1361q.this.f38450s);
            setLayoutParams(new c(C1361q.this.f38456y, -2));
            setGravity(17);
            setTextSize(0, C1361q.this.f38446o);
            setSingleLine(true);
            setEllipsize(TextUtils.TruncateAt.valueOf("END"));
            setMaxEms(4);
            setText(charSequence);
            setClickable(true);
            a();
        }

        private void a() {
            int i2;
            C1361q.this.f38452u = false;
            if (this.f38459b) {
                this.f38460c.setColor(C1361q.this.f38445n);
                i2 = C1361q.this.f38444m;
            } else {
                this.f38460c.setColor(C1361q.this.f38442k);
                i2 = C1361q.this.f38441j;
            }
            setTextColor(i2);
        }

        private void b() {
            int i2 = this.f38459b ? C1361q.this.f38445n : C1361q.this.f38442k;
            GradientDrawable gradientDrawable = new GradientDrawable();
            gradientDrawable.setCornerRadii(C1361q.this.f38453v);
            gradientDrawable.setColor(i2);
            setBackground(gradientDrawable);
        }

        @Override // android.widget.TextView
        public boolean getDefaultEditable() {
            return false;
        }

        @Override // android.widget.TextView, android.view.View
        public void onDraw(Canvas canvas) {
            if (!C1361q.this.f38452u) {
                b();
            }
            super.onDraw(canvas);
        }

        @Override // android.widget.TextView, android.view.View
        public boolean onTouchEvent(MotionEvent motionEvent) {
            int action = motionEvent.getAction();
            if (action != 0) {
                if (action == 1 || (action == 2 && !this.f38461d.contains((int) motionEvent.getX(), (int) motionEvent.getY()))) {
                }
                return super.onTouchEvent(motionEvent);
            }
            getDrawingRect(this.f38461d);
            a();
            invalidate();
            return super.onTouchEvent(motionEvent);
        }

        public void a(boolean z2) {
            this.f38459b = z2;
            a();
        }
    }

    /* renamed from: com.sigmob.sdk.nativead.q$c */
    public static class c extends ViewGroup.LayoutParams {
        public c(int i2, int i3) {
            super(i2, i3);
        }

        public c(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }
    }

    /* renamed from: com.sigmob.sdk.nativead.q$d */
    public static class d extends View.BaseSavedState {
        public static final Parcelable.Creator<d> CREATOR = new Parcelable.Creator<d>() { // from class: com.sigmob.sdk.nativead.q.d.1
            @Override // android.os.Parcelable.Creator
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public d createFromParcel(Parcel parcel) {
                return new d(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public d[] newArray(int i2) {
                return new d[i2];
            }
        };

        /* renamed from: a, reason: collision with root package name */
        int f38462a;

        /* renamed from: b, reason: collision with root package name */
        String[] f38463b;

        /* renamed from: c, reason: collision with root package name */
        int f38464c;

        public d(Parcel parcel) {
            super(parcel);
            int i2 = parcel.readInt();
            this.f38462a = i2;
            String[] strArr = new String[i2];
            this.f38463b = strArr;
            parcel.readStringArray(strArr);
            this.f38464c = parcel.readInt();
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            super.writeToParcel(parcel, i2);
            int length = this.f38463b.length;
            this.f38462a = length;
            parcel.writeInt(length);
            parcel.writeStringArray(this.f38463b);
            parcel.writeInt(this.f38464c);
        }

        public d(Parcelable parcelable) {
            super(parcelable);
        }
    }

    /* renamed from: com.sigmob.sdk.nativead.q$e */
    public interface e {
        void onItemClick(int i2, String str);
    }

    public C1361q(Context context) {
        this(context, null);
    }

    private float a(float f2) {
        return TypedValue.applyDimension(1, f2, getResources().getDisplayMetrics());
    }

    private int b(float f2) {
        return (int) TypedValue.applyDimension(2, f2, getResources().getDisplayMetrics());
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new c(getContext(), attributeSet);
    }

    public ArrayList<Integer> getAllItemSelectedIndex() {
        int childCount = getChildCount();
        ArrayList<Integer> arrayList = new ArrayList<>();
        for (int i2 = 0; i2 < childCount; i2++) {
            if (b(i2).f38459b) {
                arrayList.add(Integer.valueOf(i2));
            }
        }
        return arrayList;
    }

    public ArrayList<String> getAllItemSelectedTextWithListArray() {
        int childCount = getChildCount();
        ArrayList<String> arrayList = new ArrayList<>();
        for (int i2 = 0; i2 < childCount; i2++) {
            b bVarB = b(i2);
            if (bVarB.f38459b) {
                arrayList.add(bVarB.getText().toString());
            }
        }
        return arrayList;
    }

    public String[] getAllItemSelectedTextWithStringArray() {
        int childCount = getChildCount();
        ArrayList arrayList = new ArrayList();
        for (int i2 = 0; i2 < childCount; i2++) {
            b bVarB = b(i2);
            if (bVarB.f38459b) {
                arrayList.add(bVarB.getText().toString());
            }
        }
        return (String[]) arrayList.toArray(new String[0]);
    }

    public String[] getAllItemText() {
        int childCount = getChildCount();
        ArrayList arrayList = new ArrayList();
        for (int i2 = 0; i2 < childCount; i2++) {
            arrayList.add(b(i2).getText().toString());
        }
        return (String[]) arrayList.toArray(new String[0]);
    }

    public int getSelectedIndex() {
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            if (b(i2).f38459b) {
                return i2;
            }
        }
        return -1;
    }

    public b getSelectedItem() {
        int selectedIndex = getSelectedIndex();
        if (selectedIndex == -1) {
            return null;
        }
        return b(selectedIndex);
    }

    public String getSelectedItemText() {
        b selectedItem = getSelectedItem();
        if (selectedItem == null) {
            return null;
        }
        return selectedItem.getText().toString();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z2, int i2, int i3, int i4, int i5) {
        int paddingLeft = getPaddingLeft();
        int paddingRight = (i4 - i2) - getPaddingRight();
        int paddingTop = getPaddingTop();
        getPaddingBottom();
        int childCount = getChildCount();
        int i6 = paddingLeft;
        int iMax = 0;
        for (int i7 = 0; i7 < childCount; i7++) {
            View childAt = getChildAt(i7);
            int measuredWidth = childAt.getMeasuredWidth();
            int measuredHeight = childAt.getMeasuredHeight();
            if (childAt.getVisibility() != 8) {
                if (i6 + measuredWidth > paddingRight) {
                    paddingTop += iMax + this.f38448q;
                    i6 = paddingLeft;
                    iMax = measuredHeight;
                } else {
                    iMax = Math.max(iMax, measuredHeight);
                }
                childAt.layout(i6, paddingTop, i6 + measuredWidth, measuredHeight + paddingTop);
                i6 += measuredWidth + this.f38447p;
            }
        }
    }

    @Override // android.view.View
    public void onMeasure(int i2, int i3) {
        int mode = View.MeasureSpec.getMode(i2);
        int mode2 = View.MeasureSpec.getMode(i3);
        int size = View.MeasureSpec.getSize(i2);
        int size2 = View.MeasureSpec.getSize(i3);
        measureChildren(i2, i3);
        int childCount = getChildCount();
        int i4 = 0;
        int i5 = 0;
        int i6 = 0;
        int i7 = 0;
        for (int i8 = 0; i8 < childCount; i8++) {
            View childAt = getChildAt(i8);
            int measuredWidth = childAt.getMeasuredWidth();
            int measuredHeight = childAt.getMeasuredHeight();
            if (childAt.getVisibility() != 8) {
                int i9 = i7 + measuredWidth;
                if (i9 > size) {
                    i4 += i5 + this.f38448q;
                    i6++;
                } else {
                    measuredHeight = Math.max(i5, measuredHeight);
                    measuredWidth = i9;
                }
                i7 = measuredWidth + this.f38447p;
                i5 = measuredHeight;
            }
        }
        int paddingTop = i4 + i5 + getPaddingTop() + getPaddingBottom();
        int paddingLeft = i6 == 0 ? i7 + getPaddingLeft() + getPaddingRight() : size;
        if (mode != 1073741824) {
            size = paddingLeft;
        }
        if (mode2 != 1073741824) {
            size2 = paddingTop;
        }
        setMeasuredDimension(size, size2);
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof d)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        d dVar = (d) parcelable;
        super.onRestoreInstanceState(dVar.getSuperState());
        setList(dVar.f38463b);
        b bVarB = b(dVar.f38464c);
        if (bVarB == null) {
            return;
        }
        bVarB.a(true);
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        d dVar = new d(super.onSaveInstanceState());
        dVar.f38463b = getAllItemText();
        dVar.f38464c = getSelectedIndex();
        return dVar;
    }

    public void setIndexListItemSelected(List<Integer> list) {
        if (list == null || list.isEmpty()) {
            return;
        }
        if (list.size() > getChildCount()) {
            return;
        }
        for (int i2 = 0; i2 < list.size(); i2++) {
            b(i2).a(true);
        }
    }

    public void setList(List<String> list) {
        setList((String[]) list.toArray(new String[0]));
    }

    public void setOnItemClickListener(e eVar) {
        this.f38454w = eVar;
    }

    public C1361q(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public int a(int i2) {
        return a(i2, true);
    }

    public b b(int i2) {
        if (getChildAt(i2) == null) {
            return null;
        }
        return (b) getChildAt(i2);
    }

    public void c() {
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            b bVarB = b(i2);
            if (bVarB != null) {
                if (bVarB.f38459b) {
                    bVarB.a(false);
                }
                bVarB.setClickable(false);
            }
        }
    }

    public boolean d(int i2) {
        b bVarB = b(i2);
        return bVarB != null && bVarB.f38459b;
    }

    public void setList(String... strArr) {
        removeAllViews();
        for (String str : strArr) {
            a((CharSequence) str);
        }
    }

    public C1361q(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f38432a = -16777216;
        int color = Color.parseColor("#EEEEEE");
        this.f38433b = color;
        this.f38434c = -1;
        int color2 = Color.parseColor("#FE7E03");
        this.f38435d = color2;
        this.f38452u = false;
        this.f38453v = new float[]{0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f};
        this.f38455x = new a();
        int i3 = context.getResources().getDisplayMetrics().widthPixels;
        int i4 = context.getResources().getDisplayMetrics().heightPixels;
        int iA = (int) a(100.0f);
        if (i4 > i3) {
            this.f38456y = (i3 - iA) / 3;
        } else {
            this.f38456y = (i4 - iA) / 3;
        }
        float fB = b(11.0f);
        this.f38436e = fB;
        float fA = a(8.0f);
        this.f38437f = fA;
        float fA2 = a(8.0f);
        this.f38438g = fA2;
        float fA3 = a(8.0f);
        this.f38439h = fA3;
        float fA4 = a(5.0f);
        this.f38440i = fA4;
        this.f38441j = -16777216;
        this.f38442k = color;
        this.f38444m = -1;
        this.f38445n = color2;
        this.f38446o = fB;
        this.f38447p = (int) fA;
        this.f38448q = (int) fA2;
        this.f38449r = (int) fA3;
        this.f38450s = (int) fA4;
        this.f38451t = false;
        this.f38443l = true;
    }

    public int a(int i2, boolean z2) {
        if (i2 >= getChildCount()) {
            return -1;
        }
        b(i2).a(z2);
        return i2;
    }

    public void b() {
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            b bVarB = b(i2);
            if (bVarB != null && bVarB.f38459b) {
                bVarB.a(false);
            }
        }
    }

    public void c(int i2) {
        b bVarB = b(i2);
        if (bVarB == null || !bVarB.f38459b) {
            return;
        }
        bVarB.a(false);
    }

    public int a(String str) {
        ArrayList<String> allItemSelectedTextWithListArray = getAllItemSelectedTextWithListArray();
        if (allItemSelectedTextWithListArray == null || !allItemSelectedTextWithListArray.contains(str)) {
            return -1;
        }
        return allItemSelectedTextWithListArray.indexOf(str);
    }

    public void a() {
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            b(i2).a(true);
        }
    }

    public void a(int i2, String str) {
        if (i2 >= getChildCount()) {
            return;
        }
        b(i2).setText(str);
    }

    private void a(CharSequence charSequence) {
        b bVar = new b(getContext(), charSequence);
        bVar.setOnClickListener(this.f38455x);
        addView(bVar);
    }
}
