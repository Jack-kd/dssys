.class public Lcom/fl/saas/adx/base/widget/InclineView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fl/saas/adx/base/widget/InclineView$InclineListener;
    }
.end annotation


# static fields
.field private static final INCLINE_DEFAULT_THRESHOLD:I = 0x190


# instance fields
.field private accelerometerSensor:Landroid/hardware/Sensor;

.field private inclineThreshold:I

.field private isCallback:Z

.field private isVisibility:Z

.field private lastUpdate:J

.field private last_x:F

.field private last_y:F

.field private last_z:F

.field private mAnimator:Landroid/animation/Animator;

.field private mImageView:Landroid/widget/ImageView;

.field private mInclineListener:Lcom/fl/saas/adx/base/widget/InclineView$InclineListener;

.field private sensorManager:Landroid/hardware/SensorManager;


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

    iput p1, p0, Lcom/fl/saas/adx/base/widget/InclineView;->inclineThreshold:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/fl/saas/adx/base/widget/InclineView;->isVisibility:Z

    iput-boolean p1, p0, Lcom/fl/saas/adx/base/widget/InclineView;->isCallback:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/fl/saas/adx/base/widget/InclineView;->lastUpdate:J

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
    invoke-direct {p0, p1, p2, v0}, Lcom/fl/saas/adx/base/widget/InclineView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

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

    iput p1, p0, Lcom/fl/saas/adx/base/widget/InclineView;->inclineThreshold:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/fl/saas/adx/base/widget/InclineView;->isVisibility:Z

    iput-boolean p1, p0, Lcom/fl/saas/adx/base/widget/InclineView;->isCallback:Z

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/fl/saas/adx/base/widget/InclineView;->lastUpdate:J

    invoke-direct {p0}, Lcom/fl/saas/adx/base/widget/InclineView;->createImageView()V

    return-void
.end method

.method public static synthetic a(Lcom/fl/saas/adx/base/widget/InclineView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/fl/saas/adx/base/widget/InclineView;->playAnimator()V

    return-void
.end method

.method public static synthetic access$000(Lcom/fl/saas/adx/base/widget/InclineView;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/fl/saas/adx/base/widget/InclineView;->mImageView:Landroid/widget/ImageView;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/fl/saas/adx/base/widget/InclineView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/fl/saas/adx/base/widget/InclineView;->isVisibility:Z

    return p0
.end method

.method private cancelAnimator()V
    .locals 1

    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/InclineView;->mAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_0
    return-void
.end method

.method private createAnimatorSet(Landroid/view/View;JF)Landroid/animation/Animator;
    .locals 10

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotX(F)V

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotY(F)V

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v2, 0x2

    new-array v3, v2, [F

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput v5, v3, v4

    const/4 v6, 0x1

    aput p4, v3, v6

    const-string v7, "rotationX"

    invoke-static {p1, v7, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    neg-float v8, p4

    div-float/2addr v8, v1

    new-array v1, v2, [F

    aput p4, v1, v4

    aput v8, v1, v6

    invoke-static {p1, v7, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v8, 0x2

    mul-long/2addr v8, p2

    invoke-virtual {v1, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    invoke-virtual {v1, v6}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    new-array v8, v2, [F

    aput p4, v8, v4

    aput v5, v8, v6

    invoke-static {p1, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const/4 p2, 0x3

    new-array p2, p2, [Landroid/animation/Animator;

    aput-object v3, p2, v4

    aput-object v1, p2, v6

    aput-object p1, p2, v2

    invoke-virtual {v0, p2}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    const-wide/16 p1, 0x190

    invoke-virtual {v0, p1, p2}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    new-instance p1, Lcom/fl/saas/adx/base/widget/InclineView$1;

    invoke-direct {p1, p0}, Lcom/fl/saas/adx/base/widget/InclineView$1;-><init>(Lcom/fl/saas/adx/base/widget/InclineView;)V

    invoke-virtual {v0, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v0
.end method

.method private createImageView()V
    .locals 3

    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fl/saas/adx/base/widget/InclineView;->mImageView:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/InclineView;->mImageView:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v1, p0, Lcom/fl/saas/adx/base/widget/InclineView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/InclineView;->mImageView:Landroid/widget/ImageView;

    sget v1, Lcom/fl/saas/R$drawable;->fl_adx_icon_shake_hand:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method private playAnimator()V
    .locals 4

    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/InclineView;->mAnimator:Landroid/animation/Animator;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/InclineView;->mImageView:Landroid/widget/ImageView;

    const-wide/16 v1, 0xc8

    const/high16 v3, 0x42200000    # 40.0f

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/fl/saas/adx/base/widget/InclineView;->createAnimatorSet(Landroid/view/View;JF)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/fl/saas/adx/base/widget/InclineView;->mAnimator:Landroid/animation/Animator;

    :cond_0
    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/InclineView;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/InclineView;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    :cond_1
    return-void
.end method

.method private registerAccelerometer()V
    .locals 3

    :try_start_0
    iget-boolean v0, p0, Lcom/fl/saas/adx/base/widget/InclineView;->isCallback:Z

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
    move-exception v0

    goto :goto_1

    :cond_1
    sget-boolean v0, Lcom/fl/saas/adx/util/DeviceUtil;->isCanUseSensor:Z

    if-nez v0, :cond_2

    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/InclineView;->sensorManager:Landroid/hardware/SensorManager;

    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/fl/saas/adx/base/widget/InclineView;->sensorManager:Landroid/hardware/SensorManager;

    :cond_3
    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/InclineView;->accelerometerSensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/InclineView;->sensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/fl/saas/adx/base/widget/InclineView;->accelerometerSensor:Landroid/hardware/Sensor;

    :cond_4
    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/InclineView;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/fl/saas/adx/base/widget/InclineView;->accelerometerSensor:Landroid/hardware/Sensor;

    const/4 v2, 0x3

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :goto_1
    invoke-static {v0}, Lcom/fl/saas/adx/util/LogcatUtil;->debug(Ljava/lang/Throwable;)V

    return-void
.end method

.method private unRegisterAccelerometer()V
    .locals 1

    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/InclineView;->sensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    invoke-direct {p0}, Lcom/fl/saas/adx/base/widget/InclineView;->cancelAnimator()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fl/saas/adx/base/widget/InclineView;->mAnimator:Landroid/animation/Animator;

    invoke-direct {p0}, Lcom/fl/saas/adx/base/widget/InclineView;->unRegisterAccelerometer()V

    iput-object v0, p0, Lcom/fl/saas/adx/base/widget/InclineView;->sensorManager:Landroid/hardware/SensorManager;

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 10

    iget-boolean v0, p0, Lcom/fl/saas/adx/base/widget/InclineView;->isCallback:Z

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v0, 0x0

    aget v2, p1, v0

    aget v3, p1, v1

    const/4 v4, 0x2

    aget p1, p1, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/fl/saas/adx/base/widget/InclineView;->lastUpdate:J

    sub-long v6, v4, v6

    const-wide/16 v8, 0x64

    cmp-long v8, v6, v8

    if-lez v8, :cond_5

    iput-wide v4, p0, Lcom/fl/saas/adx/base/widget/InclineView;->lastUpdate:J

    iget v4, p0, Lcom/fl/saas/adx/base/widget/InclineView;->last_x:F

    const/4 v5, 0x0

    cmpl-float v8, v4, v5

    if-nez v8, :cond_2

    iget v8, p0, Lcom/fl/saas/adx/base/widget/InclineView;->last_y:F

    cmpl-float v8, v8, v5

    if-nez v8, :cond_2

    iget v8, p0, Lcom/fl/saas/adx/base/widget/InclineView;->last_z:F

    cmpl-float v5, v8, v5

    if-eqz v5, :cond_1

    goto :goto_0

    :cond_1
    iput v2, p0, Lcom/fl/saas/adx/base/widget/InclineView;->last_x:F

    iput v3, p0, Lcom/fl/saas/adx/base/widget/InclineView;->last_y:F

    iput p1, p0, Lcom/fl/saas/adx/base/widget/InclineView;->last_z:F

    return-void

    :cond_2
    :goto_0
    sub-float v4, v2, v4

    iget v5, p0, Lcom/fl/saas/adx/base/widget/InclineView;->last_y:F

    sub-float v5, v3, v5

    iget v8, p0, Lcom/fl/saas/adx/base/widget/InclineView;->last_z:F

    sub-float v8, p1, v8

    mul-float/2addr v4, v4

    mul-float/2addr v5, v5

    add-float/2addr v4, v5

    mul-float/2addr v8, v8

    add-float/2addr v4, v8

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    long-to-double v6, v6

    div-double/2addr v4, v6

    const-wide v6, 0x40c3880000000000L    # 10000.0

    mul-double/2addr v4, v6

    iget v6, p0, Lcom/fl/saas/adx/base/widget/InclineView;->inclineThreshold:I

    int-to-double v6, v6

    cmpl-double v4, v4, v6

    if-ltz v4, :cond_3

    move v0, v1

    :cond_3
    iput v2, p0, Lcom/fl/saas/adx/base/widget/InclineView;->last_x:F

    iput v3, p0, Lcom/fl/saas/adx/base/widget/InclineView;->last_y:F

    iput p1, p0, Lcom/fl/saas/adx/base/widget/InclineView;->last_z:F

    if-eqz v0, :cond_5

    iput-boolean v1, p0, Lcom/fl/saas/adx/base/widget/InclineView;->isCallback:Z

    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/InclineView;->mInclineListener:Lcom/fl/saas/adx/base/widget/InclineView$InclineListener;

    if-eqz v0, :cond_4

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    mul-float/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    mul-float/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-interface {v0, v2, v3, p1}, Lcom/fl/saas/adx/base/widget/InclineView$InclineListener;->onIncline(III)V

    :cond_4
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "vibrator"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Vibrator;

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, v0, v1}, Landroid/os/Vibrator;->vibrate(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/fl/saas/adx/util/LogcatUtil;->debug(Ljava/lang/Throwable;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public onWindowVisibilityChanged(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->onWindowVisibilityChanged(I)V

    if-nez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/fl/saas/adx/base/widget/InclineView;->isVisibility:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/fl/saas/adx/base/widget/InclineView;->mImageView:Landroid/widget/ImageView;

    new-instance v0, Lcom/fl/saas/adx/base/widget/d;

    invoke-direct {v0, p0}, Lcom/fl/saas/adx/base/widget/d;-><init>(Lcom/fl/saas/adx/base/widget/InclineView;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    invoke-direct {p0}, Lcom/fl/saas/adx/base/widget/InclineView;->registerAccelerometer()V

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/fl/saas/adx/base/widget/InclineView;->cancelAnimator()V

    invoke-direct {p0}, Lcom/fl/saas/adx/base/widget/InclineView;->unRegisterAccelerometer()V

    return-void
.end method

.method public setCallback(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/fl/saas/adx/base/widget/InclineView;->isCallback:Z

    return-void
.end method

.method public setInclineListener(ILcom/fl/saas/adx/base/widget/InclineView$InclineListener;)V
    .locals 1

    if-ltz p1, :cond_2

    const/16 v0, 0x64

    if-gt p1, v0, :cond_2

    const/16 v0, 0x32

    if-ge p1, v0, :cond_0

    mul-int/lit8 p1, p1, 0x5

    :goto_0
    iput p1, p0, Lcom/fl/saas/adx/base/widget/InclineView;->inclineThreshold:I

    goto :goto_1

    :cond_0
    const/16 v0, 0x46

    if-gt p1, v0, :cond_1

    mul-int/lit8 p1, p1, 0x8

    goto :goto_0

    :cond_1
    mul-int/lit8 p1, p1, 0xf

    goto :goto_0

    :cond_2
    const/16 p1, 0x190

    goto :goto_0

    :goto_1
    iput-object p2, p0, Lcom/fl/saas/adx/base/widget/InclineView;->mInclineListener:Lcom/fl/saas/adx/base/widget/InclineView$InclineListener;

    return-void
.end method
