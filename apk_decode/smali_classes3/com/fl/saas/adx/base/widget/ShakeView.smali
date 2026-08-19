.class public Lcom/fl/saas/adx/base/widget/ShakeView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fl/saas/adx/base/widget/ShakeView$ShakeListener;
    }
.end annotation


# static fields
.field private static final SHAKE_DEFAULT_THRESHOLD:I = 0x190


# instance fields
.field private final accelerometerReading:[F

.field private accelerometerSensor:Landroid/hardware/Sensor;

.field private checkValidAreaRunnable:Ljava/lang/Runnable;

.field private isCallback:Z

.field private isVisibility:Z

.field private lastUpdate:J

.field private last_x:F

.field private last_y:F

.field private last_z:F

.field private mAnimator:Landroid/animation/Animator;

.field private mImageView:Landroid/widget/ImageView;

.field private mShakeListener:Lcom/fl/saas/adx/base/widget/ShakeView$ShakeListener;

.field private magneticSensor:Landroid/hardware/Sensor;

.field private final magnetometerReading:[F

.field private needVibrator:Z

.field private final orientationAngles:[F

.field private final playAnimatorRunnable:Ljava/lang/Runnable;

.field private final rotationMatrix:[F

.field private sensorManager:Landroid/hardware/SensorManager;

.field private shakeThreshold:I

.field private startTime:J

.field private startXAngle:D

.field private startYAngle:D

.field private startZAngle:D


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/16 p1, 0x190

    iput p1, p0, Lcom/fl/saas/adx/base/widget/ShakeView;->shakeThreshold:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/fl/saas/adx/base/widget/ShakeView;->isVisibility:Z

    iput-boolean p1, p0, Lcom/fl/saas/adx/base/widget/ShakeView;->isCallback:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/fl/saas/adx/base/widget/ShakeView;->needVibrator:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/fl/saas/adx/base/widget/ShakeView;->lastUpdate:J

    const/4 p1, 0x3

    new-array v0, p1, [F

    iput-object v0, p0, Lcom/fl/saas/adx/base/widget/ShakeView;->accelerometerReading:[F

    new-array v0, p1, [F

    iput-object v0, p0, Lcom/fl/saas/adx/base/widget/ShakeView;->magnetometerReading:[F

    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/fl/saas/adx/base/widget/ShakeView;->rotationMatrix:[F

    new-array p1, p1, [F

    iput-object p1, p0, Lcom/fl/saas/adx/base/widget/ShakeView;->orientationAngles:[F

    new-instance p1, Lcom/fl/saas/adx/base/widget/n;

    invoke-direct {p1, p0}, Lcom/fl/saas/adx/base/widget/n;-><init>(Lcom/fl/saas/adx/base/widget/ShakeView;)V

    iput-object p1, p0, Lcom/fl/saas/adx/base/widget/ShakeView;->playAnimatorRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/fl/saas/adx/base/widget/ShakeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p1, 0x190

    iput p1, p0, Lcom/fl/saas/adx/base/widget/ShakeView;->shakeThreshold:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/fl/saas/adx/base/widget/ShakeView;->isVisibility:Z

    iput-boolean p1, p0, Lcom/fl/saas/adx/base/widget/ShakeView;->isCallback:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/fl/saas/adx/base/widget/ShakeView;->needVibrator:Z

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/fl/saas/adx/base/widget/ShakeView;->lastUpdate:J

    const/4 p1, 0x3

    new-array p2, p1, [F

    iput-object p2, p0, Lcom/fl/saas/adx/base/widget/ShakeView;->accelerometerReading:[F

    new-array p2, p1, [F

    iput-object p2, p0, Lcom/fl/saas/adx/base/widget/ShakeView;->magnetometerReading:[F

    const/16 p2, 0x9

    new-array p2, p2, [F

    iput-object p2, p0, Lcom/fl/saas/adx/base/widget/ShakeView;->rotationMatrix:[F

    new-array p1, p1, [F

    iput-object p1, p0, Lcom/fl/saas/adx/base/widget/ShakeView;->orientationAngles:[F

    new-instance p1, Lcom/fl/saas/adx/base/widget/n;

    invoke-direct {p1, p0}, Lcom/fl/saas/adx/base/widget/n;-><init>(Lcom/fl/saas/adx/base/widget/ShakeView;)V

    iput-object p1, p0, Lcom/fl/saas/adx/base/widget/ShakeView;->playAnimatorRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/fl/saas/adx/base/widget/ShakeView;->createImageView()V

    return-void
.end method

.method public static synthetic a(Lcom/fl/saas/adx/base/widget/ShakeView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/fl/saas/adx/base/widget/ShakeView;->playAnimator()V

    return-void
.end method

.method public static synthetic access$000(Lcom/fl/saas/adx/base/widget/ShakeView;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/fl/saas/adx/base/widget/ShakeView;->mImageView:Landroid/widget/ImageView;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/fl/saas/adx/base/widget/ShakeView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/fl/saas/adx/base/widget/ShakeView;->isVisibility:Z

    return p0
.end method

.method public static synthetic b(Lcom/fl/saas/adx/base/widget/ShakeView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/fl/saas/adx/base/widget/ShakeView;->checkValidArea()V

    return-void
.end method

.method private cancelAnimator()V
    .locals 1

    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/ShakeView;->mAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_0
    return-void
.end method

.method private checkValidArea()V
    .locals 3

    invoke-direct {p0}, Lcom/fl/saas/adx/base/widget/ShakeView;->isShow()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/fl/saas/adx/base/widget/ShakeView;->registerAccelerometer(Z)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/ShakeView;->checkValidAreaRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_1

    new-instance v0, Lcom/fl/saas/adx/base/widget/o;

    invoke-direct {v0, p0}, Lcom/fl/saas/adx/base/widget/o;-><init>(Lcom/fl/saas/adx/base/widget/ShakeView;)V

    iput-object v0, p0, Lcom/fl/saas/adx/base/widget/ShakeView;->checkValidAreaRunnable:Ljava/lang/Runnable;

    :cond_1
    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/ShakeView;->checkValidAreaRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/fl/saas/adx/util/DeviceUtil;->removePostUI(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/ShakeView;->checkValidAreaRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0xc8

    invoke-static {v1, v2, v0}, Lcom/fl/saas/adx/util/DeviceUtil;->postUIDelayed(JLjava/lang/Runnable;)V

    return-void
.end method

.method private createAnimatorSet(Landroid/view/View;JF)Landroid/animation/Animator;
    .locals 16

    move-object/from16 v0, p1

    move-wide/from16 v1, p2

    move/from16 v3, p4

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    const/4 v6, 0x0

    cmpl-float v7, v4, v6

    if-nez v7, :cond_1

    cmpl-float v7, v5, v6

    if-nez v7, :cond_1

    const/high16 v4, 0x41c00000    # 24.0f

    invoke-static {v4}, Lcom/fl/saas/adx/util/DeviceUtil;->dip2px(F)I

    move-result v5

    int-to-float v5, v5

    invoke-static {v4}, Lcom/fl/saas/adx/util/DeviceUtil;->dip2px(F)I

    move-result v4

    int-to-float v4, v4

    move v15, v5

    move v5, v4

    move v4, v15

    :cond_1
    const v7, 0x3eb851ec    # 0.36f

    const/high16 v8, 0x3f800000    # 1.0f

    const v9, 0x3ea8f5c3    # 0.33f

    invoke-static {v9, v6, v7, v8}, Landroidx/core/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v7

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v4, v8

    invoke-virtual {v0, v4}, Landroid/view/View;->setPivotX(F)V

    div-float/2addr v5, v8

    invoke-virtual {v0, v5}, Landroid/view/View;->setPivotY(F)V

    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v5, 0x2

    new-array v8, v5, [F

    const/4 v9, 0x0

    aput v6, v8, v9

    const/4 v10, 0x1

    aput v3, v8, v10

    const-string v11, "rotation"

    invoke-static {v0, v11, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    invoke-virtual {v8, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    neg-float v12, v3

    new-array v13, v5, [F

    aput v3, v13, v9

    aput v12, v13, v10

    invoke-static {v0, v11, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v12

    const-wide/16 v13, 0x2

    mul-long/2addr v13, v1

    invoke-virtual {v12, v13, v14}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v12, v5}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    invoke-virtual {v12, v7}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/4 v7, 0x3

    invoke-virtual {v12, v7}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    new-array v13, v5, [F

    aput v3, v13, v9

    aput v6, v13, v10

    invoke-static {v0, v11, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-array v1, v7, [Landroid/animation/Animator;

    aput-object v8, v1, v9

    aput-object v12, v1, v10

    aput-object v0, v1, v5

    invoke-virtual {v4, v1}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    const-wide/16 v0, 0x190

    invoke-virtual {v4, v0, v1}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    new-instance v0, Lcom/fl/saas/adx/base/widget/ShakeView$1;

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/fl/saas/adx/base/widget/ShakeView$1;-><init>(Lcom/fl/saas/adx/base/widget/ShakeView;)V

    invoke-virtual {v4, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v4
.end method

.method private createImageView()V
    .locals 3

    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fl/saas/adx/base/widget/ShakeView;->mImageView:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/ShakeView;->mImageView:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v1, p0, Lcom/fl/saas/adx/base/widget/ShakeView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/ShakeView;->mImageView:Landroid/widget/ImageView;

    sget v1, Lcom/fl/saas/R$drawable;->fl_adx_icon_shake_hand:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method private isShow()Z
    .locals 1

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method private playAnimator()V
    .locals 4

    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/ShakeView;->mAnimator:Landroid/animation/Animator;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/ShakeView;->mImageView:Landroid/widget/ImageView;

    const-wide/16 v1, 0x64

    const/high16 v3, 0x41800000    # 16.0f

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/fl/saas/adx/base/widget/ShakeView;->createAnimatorSet(Landroid/view/View;JF)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/fl/saas/adx/base/widget/ShakeView;->mAnimator:Landroid/animation/Animator;

    :cond_0
    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/ShakeView;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/ShakeView;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    :cond_1
    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    invoke-direct {p0}, Lcom/fl/saas/adx/base/widget/ShakeView;->cancelAnimator()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fl/saas/adx/base/widget/ShakeView;->mAnimator:Landroid/animation/Animator;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/fl/saas/adx/base/widget/ShakeView;->unRegisterAccelerometer(Z)V

    iput-object v0, p0, Lcom/fl/saas/adx/base/widget/ShakeView;->sensorManager:Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/fl/saas/adx/base/widget/ShakeView;->accelerometerSensor:Landroid/hardware/Sensor;

    iget-object v1, p0, Lcom/fl/saas/adx/base/widget/ShakeView;->checkValidAreaRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/fl/saas/adx/util/DeviceUtil;->removePostUI(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/fl/saas/adx/base/widget/ShakeView;->checkValidAreaRunnable:Ljava/lang/Runnable;

    :cond_0
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/ShakeView;->mImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/fl/saas/adx/base/widget/ShakeView;->playAnimatorRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 27

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    iget-boolean v2, v1, Lcom/fl/saas/adx/base/widget/ShakeView;->isCallback:Z

    if-eqz v2, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object v2, v0, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getType()I

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-ne v3, v5, :cond_f

    iget v2, v1, Lcom/fl/saas/adx/base/widget/ShakeView;->shakeThreshold:I

    const-string v3, "vibrator"

    if-gez v2, :cond_a

    iget-object v2, v0, Landroid/hardware/SensorEvent;->values:[F

    iget-object v15, v1, Lcom/fl/saas/adx/base/widget/ShakeView;->accelerometerReading:[F

    const-wide v16, 0x40c3880000000000L    # 10000.0

    array-length v9, v15

    invoke-static {v2, v6, v15, v6, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, v1, Lcom/fl/saas/adx/base/widget/ShakeView;->rotationMatrix:[F

    iget-object v9, v1, Lcom/fl/saas/adx/base/widget/ShakeView;->accelerometerReading:[F

    iget-object v10, v1, Lcom/fl/saas/adx/base/widget/ShakeView;->magnetometerReading:[F

    const/4 v15, 0x0

    invoke-static {v2, v15, v9, v10}, Landroid/hardware/SensorManager;->getRotationMatrix([F[F[F[F)Z

    iget-object v2, v1, Lcom/fl/saas/adx/base/widget/ShakeView;->rotationMatrix:[F

    iget-object v9, v1, Lcom/fl/saas/adx/base/widget/ShakeView;->orientationAngles:[F

    invoke-static {v2, v9}, Landroid/hardware/SensorManager;->getOrientation([F[F)[F

    iget-object v2, v1, Lcom/fl/saas/adx/base/widget/ShakeView;->orientationAngles:[F

    aget v9, v2, v6

    const/high16 v10, 0x43340000    # 180.0f

    mul-float/2addr v9, v10

    move v12, v10

    const-wide/16 v18, 0x64

    float-to-double v10, v9

    const-wide v20, 0x400921fb54442d18L    # Math.PI

    div-double v10, v10, v20

    aget v9, v2, v5

    mul-float/2addr v9, v12

    move/from16 v22, v12

    const/high16 v15, 0x42c80000    # 100.0f

    float-to-double v12, v9

    div-double v12, v12, v20

    aget v2, v2, v4

    mul-float v2, v2, v22

    move/from16 v22, v15

    const/4 v9, 0x0

    float-to-double v14, v2

    div-double v14, v14, v20

    move/from16 v20, v6

    iget-wide v6, v1, Lcom/fl/saas/adx/base/widget/ShakeView;->startXAngle:D

    const-wide/16 v23, 0x0

    cmpl-double v2, v6, v23

    if-nez v2, :cond_1

    iput-wide v12, v1, Lcom/fl/saas/adx/base/widget/ShakeView;->startXAngle:D

    iput-wide v14, v1, Lcom/fl/saas/adx/base/widget/ShakeView;->startYAngle:D

    iput-wide v10, v1, Lcom/fl/saas/adx/base/widget/ShakeView;->startZAngle:D

    return-void

    :cond_1
    iget-object v0, v0, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v0, v20

    aget v6, v0, v5

    aget v0, v0, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    move-wide/from16 v23, v10

    move v11, v9

    iget-wide v9, v1, Lcom/fl/saas/adx/base/widget/ShakeView;->lastUpdate:J

    sub-long v9, v7, v9

    cmp-long v4, v9, v18

    if-lez v4, :cond_10

    move-wide/from16 v25, v12

    move v13, v11

    iget-wide v11, v1, Lcom/fl/saas/adx/base/widget/ShakeView;->startXAngle:D

    sub-double v11, v25, v11

    invoke-static {v11, v12}, Ljava/lang/Math;->abs(D)D

    move-result-wide v11

    const-wide v18, 0x4041800000000000L    # 35.0

    cmpl-double v4, v11, v18

    if-gtz v4, :cond_3

    iget-wide v11, v1, Lcom/fl/saas/adx/base/widget/ShakeView;->startYAngle:D

    sub-double/2addr v14, v11

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(D)D

    move-result-wide v11

    cmpl-double v4, v11, v18

    if-gtz v4, :cond_3

    iget-wide v11, v1, Lcom/fl/saas/adx/base/widget/ShakeView;->startZAngle:D

    sub-double v11, v23, v11

    invoke-static {v11, v12}, Ljava/lang/Math;->abs(D)D

    move-result-wide v11

    cmpl-double v4, v11, v18

    if-lez v4, :cond_2

    goto :goto_0

    :cond_2
    move/from16 v4, v20

    goto :goto_1

    :cond_3
    :goto_0
    move v4, v5

    :goto_1
    const-wide/16 v11, 0x0

    if-eqz v4, :cond_4

    iget-wide v14, v1, Lcom/fl/saas/adx/base/widget/ShakeView;->startTime:J

    cmp-long v14, v14, v11

    if-nez v14, :cond_4

    iput-wide v7, v1, Lcom/fl/saas/adx/base/widget/ShakeView;->startTime:J

    :cond_4
    iput-wide v7, v1, Lcom/fl/saas/adx/base/widget/ShakeView;->lastUpdate:J

    iget v14, v1, Lcom/fl/saas/adx/base/widget/ShakeView;->last_x:F

    cmpl-float v15, v14, v13

    if-nez v15, :cond_6

    iget v15, v1, Lcom/fl/saas/adx/base/widget/ShakeView;->last_y:F

    cmpl-float v15, v15, v13

    if-nez v15, :cond_6

    iget v15, v1, Lcom/fl/saas/adx/base/widget/ShakeView;->last_z:F

    cmpl-float v13, v15, v13

    if-eqz v13, :cond_5

    goto :goto_2

    :cond_5
    iput v2, v1, Lcom/fl/saas/adx/base/widget/ShakeView;->last_x:F

    iput v6, v1, Lcom/fl/saas/adx/base/widget/ShakeView;->last_y:F

    iput v0, v1, Lcom/fl/saas/adx/base/widget/ShakeView;->last_z:F

    return-void

    :cond_6
    :goto_2
    sub-float v13, v2, v14

    iget v14, v1, Lcom/fl/saas/adx/base/widget/ShakeView;->last_y:F

    sub-float v14, v6, v14

    iget v15, v1, Lcom/fl/saas/adx/base/widget/ShakeView;->last_z:F

    sub-float v15, v0, v15

    mul-float/2addr v13, v13

    mul-float/2addr v14, v14

    add-float/2addr v13, v14

    mul-float/2addr v15, v15

    add-float/2addr v13, v15

    float-to-double v13, v13

    invoke-static {v13, v14}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v13

    long-to-double v9, v9

    div-double/2addr v13, v9

    mul-double v13, v13, v16

    const-wide v9, 0x4097700000000000L    # 1500.0

    cmpl-double v9, v13, v9

    if-ltz v9, :cond_7

    move/from16 v20, v5

    :cond_7
    if-eqz v20, :cond_8

    iget-wide v9, v1, Lcom/fl/saas/adx/base/widget/ShakeView;->startTime:J

    cmp-long v9, v9, v11

    if-nez v9, :cond_8

    iput-wide v7, v1, Lcom/fl/saas/adx/base/widget/ShakeView;->startTime:J

    :cond_8
    iput v2, v1, Lcom/fl/saas/adx/base/widget/ShakeView;->last_x:F

    iput v6, v1, Lcom/fl/saas/adx/base/widget/ShakeView;->last_y:F

    iput v0, v1, Lcom/fl/saas/adx/base/widget/ShakeView;->last_z:F

    if-eqz v20, :cond_10

    if-eqz v4, :cond_10

    iget-wide v9, v1, Lcom/fl/saas/adx/base/widget/ShakeView;->startTime:J

    sub-long/2addr v7, v9

    const-wide/16 v9, 0xbb8

    cmp-long v4, v7, v9

    if-lez v4, :cond_10

    invoke-direct {v1}, Lcom/fl/saas/adx/base/widget/ShakeView;->isShow()Z

    move-result v4

    if-eqz v4, :cond_10

    iput-boolean v5, v1, Lcom/fl/saas/adx/base/widget/ShakeView;->isCallback:Z

    iget-object v4, v1, Lcom/fl/saas/adx/base/widget/ShakeView;->mShakeListener:Lcom/fl/saas/adx/base/widget/ShakeView$ShakeListener;

    if-eqz v4, :cond_9

    mul-float v2, v2, v22

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    mul-float v6, v6, v22

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v5

    mul-float v0, v0, v22

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-interface {v4, v2, v5, v0}, Lcom/fl/saas/adx/base/widget/ShakeView$ShakeListener;->onShake(III)V

    :cond_9
    iget-boolean v0, v1, Lcom/fl/saas/adx/base/widget/ShakeView;->needVibrator:Z

    if-eqz v0, :cond_10

    :try_start_0
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/fl/saas/adx/util/LogcatUtil;->debug(Ljava/lang/Throwable;)V

    goto/16 :goto_4

    :cond_a
    move/from16 v20, v6

    const/4 v13, 0x0

    const-wide v16, 0x40c3880000000000L    # 10000.0

    const-wide/16 v18, 0x64

    const/high16 v22, 0x42c80000    # 100.0f

    iget-object v0, v0, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v0, v20

    aget v6, v0, v5

    aget v0, v0, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iget-wide v9, v1, Lcom/fl/saas/adx/base/widget/ShakeView;->lastUpdate:J

    sub-long v9, v7, v9

    cmp-long v4, v9, v18

    if-lez v4, :cond_10

    iput-wide v7, v1, Lcom/fl/saas/adx/base/widget/ShakeView;->lastUpdate:J

    iget v4, v1, Lcom/fl/saas/adx/base/widget/ShakeView;->last_x:F

    cmpl-float v7, v4, v13

    if-nez v7, :cond_c

    iget v7, v1, Lcom/fl/saas/adx/base/widget/ShakeView;->last_y:F

    cmpl-float v7, v7, v13

    if-nez v7, :cond_c

    iget v7, v1, Lcom/fl/saas/adx/base/widget/ShakeView;->last_z:F

    cmpl-float v7, v7, v13

    if-eqz v7, :cond_b

    goto :goto_3

    :cond_b
    iput v2, v1, Lcom/fl/saas/adx/base/widget/ShakeView;->last_x:F

    iput v6, v1, Lcom/fl/saas/adx/base/widget/ShakeView;->last_y:F

    iput v0, v1, Lcom/fl/saas/adx/base/widget/ShakeView;->last_z:F

    return-void

    :cond_c
    :goto_3
    sub-float v4, v2, v4

    iget v7, v1, Lcom/fl/saas/adx/base/widget/ShakeView;->last_y:F

    sub-float v7, v6, v7

    iget v8, v1, Lcom/fl/saas/adx/base/widget/ShakeView;->last_z:F

    sub-float v8, v0, v8

    mul-float/2addr v4, v4

    mul-float/2addr v7, v7

    add-float/2addr v4, v7

    mul-float/2addr v8, v8

    add-float/2addr v4, v8

    float-to-double v7, v4

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    long-to-double v9, v9

    div-double/2addr v7, v9

    mul-double v7, v7, v16

    iget v4, v1, Lcom/fl/saas/adx/base/widget/ShakeView;->shakeThreshold:I

    int-to-double v9, v4

    cmpl-double v4, v7, v9

    if-ltz v4, :cond_d

    move/from16 v20, v5

    :cond_d
    iput v2, v1, Lcom/fl/saas/adx/base/widget/ShakeView;->last_x:F

    iput v6, v1, Lcom/fl/saas/adx/base/widget/ShakeView;->last_y:F

    iput v0, v1, Lcom/fl/saas/adx/base/widget/ShakeView;->last_z:F

    if-eqz v20, :cond_10

    invoke-direct {v1}, Lcom/fl/saas/adx/base/widget/ShakeView;->isShow()Z

    move-result v4

    if-eqz v4, :cond_10

    iput-boolean v5, v1, Lcom/fl/saas/adx/base/widget/ShakeView;->isCallback:Z

    iget-object v4, v1, Lcom/fl/saas/adx/base/widget/ShakeView;->mShakeListener:Lcom/fl/saas/adx/base/widget/ShakeView$ShakeListener;

    if-eqz v4, :cond_e

    mul-float v2, v2, v22

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    mul-float v6, v6, v22

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v5

    mul-float v0, v0, v22

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-interface {v4, v2, v5, v0}, Lcom/fl/saas/adx/base/widget/ShakeView$ShakeListener;->onShake(III)V

    :cond_e
    iget-boolean v0, v1, Lcom/fl/saas/adx/base/widget/ShakeView;->needVibrator:Z

    if-eqz v0, :cond_10

    :try_start_1
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :cond_f
    move/from16 v20, v6

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getType()I

    move-result v2

    if-ne v2, v4, :cond_10

    iget-object v0, v0, Landroid/hardware/SensorEvent;->values:[F

    iget-object v2, v1, Lcom/fl/saas/adx/base/widget/ShakeView;->magnetometerReading:[F

    array-length v3, v2

    move/from16 v4, v20

    invoke-static {v0, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_10
    :goto_4
    return-void
.end method

.method public onWindowVisibilityChanged(I)V
    .locals 2

    invoke-super {p0, p1}, Landroid/view/View;->onWindowVisibilityChanged(I)V

    const/4 v0, 0x1

    if-nez p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/fl/saas/adx/base/widget/ShakeView;->isVisibility:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/fl/saas/adx/base/widget/ShakeView;->mImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/fl/saas/adx/base/widget/ShakeView;->playAnimatorRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    invoke-direct {p0}, Lcom/fl/saas/adx/base/widget/ShakeView;->isShow()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0, v0}, Lcom/fl/saas/adx/base/widget/ShakeView;->registerAccelerometer(Z)V

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/fl/saas/adx/base/widget/ShakeView;->checkValidArea()V

    return-void

    :cond_2
    invoke-direct {p0}, Lcom/fl/saas/adx/base/widget/ShakeView;->cancelAnimator()V

    invoke-virtual {p0, v0}, Lcom/fl/saas/adx/base/widget/ShakeView;->unRegisterAccelerometer(Z)V

    return-void
.end method

.method public registerAccelerometer(Z)V
    .locals 2

    :try_start_0
    iget-boolean v0, p0, Lcom/fl/saas/adx/base/widget/ShakeView;->isCallback:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/fl/saas/adx/util/DeviceUtil;->controlBean:Lcom/fl/saas/r0;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/fl/saas/r0;->g()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    sget-boolean v0, Lcom/fl/saas/adx/util/DeviceUtil;->isCanUseSensor:Z

    if-nez v0, :cond_2

    :goto_0
    return-void

    :cond_2
    if-eqz p1, :cond_3

    invoke-static {}, Lcom/fl/saas/U0;->a()Lcom/fl/saas/U0;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/fl/saas/U0;->a(Lcom/fl/saas/adx/base/widget/ShakeView;)V

    :cond_3
    iget-object p1, p0, Lcom/fl/saas/adx/base/widget/ShakeView;->sensorManager:Landroid/hardware/SensorManager;

    if-nez p1, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorManager;

    iput-object p1, p0, Lcom/fl/saas/adx/base/widget/ShakeView;->sensorManager:Landroid/hardware/SensorManager;

    :cond_4
    iget-object p1, p0, Lcom/fl/saas/adx/base/widget/ShakeView;->accelerometerSensor:Landroid/hardware/Sensor;

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/fl/saas/adx/base/widget/ShakeView;->sensorManager:Landroid/hardware/SensorManager;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    iput-object p1, p0, Lcom/fl/saas/adx/base/widget/ShakeView;->accelerometerSensor:Landroid/hardware/Sensor;

    :cond_5
    iget-object p1, p0, Lcom/fl/saas/adx/base/widget/ShakeView;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/ShakeView;->accelerometerSensor:Landroid/hardware/Sensor;

    const/4 v1, 0x3

    invoke-virtual {p1, p0, v0, v1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    iget-object p1, p0, Lcom/fl/saas/adx/base/widget/ShakeView;->magneticSensor:Landroid/hardware/Sensor;

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/fl/saas/adx/base/widget/ShakeView;->sensorManager:Landroid/hardware/SensorManager;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    iput-object p1, p0, Lcom/fl/saas/adx/base/widget/ShakeView;->magneticSensor:Landroid/hardware/Sensor;

    :cond_6
    iget-object p1, p0, Lcom/fl/saas/adx/base/widget/ShakeView;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/ShakeView;->magneticSensor:Landroid/hardware/Sensor;

    invoke-virtual {p1, p0, v0, v1, v1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;II)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :goto_1
    invoke-static {p1}, Lcom/fl/saas/adx/util/LogcatUtil;->debug(Ljava/lang/Throwable;)V

    return-void
.end method

.method public setCallback(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/fl/saas/adx/base/widget/ShakeView;->isCallback:Z

    return-void
.end method

.method public setNeedVibrator(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/fl/saas/adx/base/widget/ShakeView;->needVibrator:Z

    return-void
.end method

.method public setShakeListener(ILcom/fl/saas/adx/base/widget/ShakeView$ShakeListener;)V
    .locals 1

    if-ltz p1, :cond_2

    const/16 v0, 0x64

    if-ge p1, v0, :cond_2

    const/16 v0, 0x32

    if-ge p1, v0, :cond_0

    mul-int/lit8 p1, p1, 0x5

    :goto_0
    iput p1, p0, Lcom/fl/saas/adx/base/widget/ShakeView;->shakeThreshold:I

    goto :goto_1

    :cond_0
    const/16 v0, 0x46

    if-gt p1, v0, :cond_1

    mul-int/lit8 p1, p1, 0x8

    goto :goto_0

    :cond_1
    mul-int/lit8 p1, p1, 0x14

    goto :goto_0

    :cond_2
    const/4 p1, -0x1

    goto :goto_0

    :goto_1
    iput-object p2, p0, Lcom/fl/saas/adx/base/widget/ShakeView;->mShakeListener:Lcom/fl/saas/adx/base/widget/ShakeView$ShakeListener;

    return-void
.end method

.method public unRegisterAccelerometer(Z)V
    .locals 2

    if-eqz p1, :cond_0

    :try_start_0
    invoke-static {}, Lcom/fl/saas/U0;->a()Lcom/fl/saas/U0;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/fl/saas/U0;->b(Lcom/fl/saas/adx/base/widget/ShakeView;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/fl/saas/adx/base/widget/ShakeView;->startTime:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/fl/saas/adx/base/widget/ShakeView;->startXAngle:D

    iput-wide v0, p0, Lcom/fl/saas/adx/base/widget/ShakeView;->startYAngle:D

    iput-wide v0, p0, Lcom/fl/saas/adx/base/widget/ShakeView;->startZAngle:D

    iget-object p1, p0, Lcom/fl/saas/adx/base/widget/ShakeView;->sensorManager:Landroid/hardware/SensorManager;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/ShakeView;->accelerometerSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_1

    invoke-virtual {p1, p0, v0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    :cond_1
    iget-object p1, p0, Lcom/fl/saas/adx/base/widget/ShakeView;->magneticSensor:Landroid/hardware/Sensor;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/ShakeView;->sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0, p1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    return-void

    :goto_1
    invoke-static {p1}, Lcom/fl/saas/adx/util/LogcatUtil;->debug(Ljava/lang/Throwable;)V

    return-void
.end method
