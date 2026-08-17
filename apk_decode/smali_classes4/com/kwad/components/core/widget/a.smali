.class public final Lcom/kwad/components/core/widget/a;
.super Lcom/kwad/sdk/widget/KSFrameLayout;
.source "SourceFile"

# interfaces
.implements Lcom/kwad/sdk/utils/cc$a;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/components/core/widget/a$a;
    }
.end annotation


# instance fields
.field private avj:Lcom/kwad/components/core/widget/a$a;

.field private avk:Z

.field private avl:Z

.field private avm:I

.field private avn:Z

.field private avo:J

.field private avp:Z

.field private final avq:F

.field private final avr:I

.field private final bZ:Landroid/view/View;

.field private final ca:Lcom/kwad/sdk/utils/cc;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/kwad/sdk/widget/KSFrameLayout;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lcom/kwad/sdk/utils/cc;

    .line 5
    .line 6
    invoke-direct {p1, p0}, Lcom/kwad/sdk/utils/cc;-><init>(Lcom/kwad/sdk/utils/cc$a;)V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/kwad/components/core/widget/a;->ca:Lcom/kwad/sdk/utils/cc;

    .line 10
    .line 11
    const/4 p1, 0x5

    .line 12
    iput p1, p0, Lcom/kwad/components/core/widget/a;->avm:I

    .line 13
    .line 14
    iput-object p2, p0, Lcom/kwad/components/core/widget/a;->bZ:Landroid/view/View;

    .line 15
    .line 16
    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    .line 17
    .line 18
    const/4 p2, 0x1

    .line 19
    invoke-direct {p1, p2, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 23
    .line 24
    .line 25
    invoke-static {}, Lcom/kwad/sdk/core/config/e;->Kd()F

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    iput p1, p0, Lcom/kwad/components/core/widget/a;->avq:F

    .line 30
    .line 31
    invoke-virtual {p0, p1}, Lcom/kwad/sdk/widget/KSFrameLayout;->setVisiblePercent(F)V

    .line 32
    .line 33
    .line 34
    invoke-static {}, Lcom/kwad/sdk/core/config/e;->Kf()F

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    const/4 p2, 0x0

    .line 39
    cmpg-float p2, p1, p2

    .line 40
    .line 41
    if-gez p2, :cond_0

    .line 42
    .line 43
    const/high16 p1, 0x3f800000    # 1.0f

    .line 44
    .line 45
    :cond_0
    const/high16 p2, 0x447a0000    # 1000.0f

    .line 46
    .line 47
    mul-float/2addr p1, p2

    .line 48
    float-to-int p1, p1

    .line 49
    iput p1, p0, Lcom/kwad/components/core/widget/a;->avr:I

    .line 50
    .line 51
    return-void
.end method

.method private zJ()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/kwad/components/core/widget/a;->avr:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/kwad/components/core/widget/a;->avj:Lcom/kwad/components/core/widget/a$a;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v1, p0, Lcom/kwad/components/core/widget/a;->bZ:Landroid/view/View;

    .line 10
    .line 11
    invoke-interface {v0, v1}, Lcom/kwad/components/core/widget/a$a;->b(Landroid/view/View;)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/kwad/components/core/widget/a;->ca:Lcom/kwad/sdk/utils/cc;

    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const/4 v1, 0x2

    .line 22
    iput v1, v0, Landroid/os/Message;->what:I

    .line 23
    .line 24
    iget-object v1, p0, Lcom/kwad/components/core/widget/a;->ca:Lcom/kwad/sdk/utils/cc;

    .line 25
    .line 26
    iget v2, p0, Lcom/kwad/components/core/widget/a;->avr:I

    .line 27
    .line 28
    int-to-long v2, v2

    .line 29
    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method private zK()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kwad/components/core/widget/a;->ca:Lcom/kwad/sdk/utils/cc;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/kwad/components/core/widget/a;->avl:Z

    .line 9
    .line 10
    return-void
.end method

.method private zL()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/kwad/components/core/widget/a;->avl:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/kwad/components/core/widget/a;->avl:Z

    .line 7
    .line 8
    iget-object v1, p0, Lcom/kwad/components/core/widget/a;->ca:Lcom/kwad/sdk/utils/cc;

    .line 9
    .line 10
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method


# virtual methods
.method public final H(Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Lcom/kwad/sdk/widget/KSFrameLayout;->H(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/kwad/components/core/widget/a;->avr:I

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/kwad/components/core/widget/a;->avj:Lcom/kwad/components/core/widget/a$a;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-interface {v0, p1}, Lcom/kwad/components/core/widget/a$a;->b(Landroid/view/View;)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    iget-boolean v0, p0, Lcom/kwad/components/core/widget/a;->avn:Z

    .line 17
    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    const/4 p1, 0x1

    .line 21
    iput-boolean p1, p0, Lcom/kwad/components/core/widget/a;->avn:Z

    .line 22
    .line 23
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 24
    .line 25
    .line 26
    move-result-wide v0

    .line 27
    iput-wide v0, p0, Lcom/kwad/components/core/widget/a;->avo:J

    .line 28
    .line 29
    invoke-direct {p0}, Lcom/kwad/components/core/widget/a;->zK()V

    .line 30
    .line 31
    .line 32
    invoke-direct {p0}, Lcom/kwad/components/core/widget/a;->zJ()V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 37
    .line 38
    .line 39
    move-result-wide v0

    .line 40
    iget-wide v2, p0, Lcom/kwad/components/core/widget/a;->avo:J

    .line 41
    .line 42
    sub-long/2addr v0, v2

    .line 43
    iget v2, p0, Lcom/kwad/components/core/widget/a;->avr:I

    .line 44
    .line 45
    int-to-long v2, v2

    .line 46
    cmp-long v0, v0, v2

    .line 47
    .line 48
    if-lez v0, :cond_2

    .line 49
    .line 50
    iget-object v0, p0, Lcom/kwad/components/core/widget/a;->avj:Lcom/kwad/components/core/widget/a$a;

    .line 51
    .line 52
    if-eqz v0, :cond_2

    .line 53
    .line 54
    invoke-interface {v0, p1}, Lcom/kwad/components/core/widget/a$a;->b(Landroid/view/View;)V

    .line 55
    .line 56
    .line 57
    invoke-direct {p0}, Lcom/kwad/components/core/widget/a;->zK()V

    .line 58
    .line 59
    .line 60
    :cond_2
    return-void
.end method

.method public final a(Landroid/os/Message;)V
    .locals 9

    .line 1
    iget-boolean v0, p0, Lcom/kwad/components/core/widget/a;->avk:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget p1, p1, Landroid/os/Message;->what:I

    .line 7
    .line 8
    const/high16 v0, 0x42c80000    # 100.0f

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    const/4 v2, 0x1

    .line 12
    if-eq p1, v2, :cond_4

    .line 13
    .line 14
    const/4 v3, 0x2

    .line 15
    if-eq p1, v3, :cond_1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    iget-object p1, p0, Lcom/kwad/components/core/widget/a;->bZ:Landroid/view/View;

    .line 19
    .line 20
    iget v3, p0, Lcom/kwad/components/core/widget/a;->avq:F

    .line 21
    .line 22
    mul-float/2addr v3, v0

    .line 23
    float-to-int v0, v3

    .line 24
    invoke-static {p1, v0, v1}, Lcom/kwad/sdk/utils/cb;->a(Landroid/view/View;IZ)Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    if-eqz p1, :cond_3

    .line 29
    .line 30
    iget-object p1, p0, Lcom/kwad/components/core/widget/a;->avj:Lcom/kwad/components/core/widget/a$a;

    .line 31
    .line 32
    if-eqz p1, :cond_2

    .line 33
    .line 34
    iget-object v0, p0, Lcom/kwad/components/core/widget/a;->bZ:Landroid/view/View;

    .line 35
    .line 36
    invoke-interface {p1, v0}, Lcom/kwad/components/core/widget/a$a;->b(Landroid/view/View;)V

    .line 37
    .line 38
    .line 39
    :cond_2
    :goto_0
    return-void

    .line 40
    :cond_3
    const/4 p1, 0x5

    .line 41
    iput p1, p0, Lcom/kwad/components/core/widget/a;->avm:I

    .line 42
    .line 43
    iget-object p1, p0, Lcom/kwad/components/core/widget/a;->ca:Lcom/kwad/sdk/utils/cc;

    .line 44
    .line 45
    invoke-virtual {p1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :cond_4
    iget-object p1, p0, Lcom/kwad/components/core/widget/a;->bZ:Landroid/view/View;

    .line 50
    .line 51
    iget v3, p0, Lcom/kwad/components/core/widget/a;->avq:F

    .line 52
    .line 53
    mul-float/2addr v3, v0

    .line 54
    float-to-int v0, v3

    .line 55
    invoke-static {p1, v0, v1}, Lcom/kwad/sdk/utils/cb;->a(Landroid/view/View;IZ)Z

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    const-wide/16 v3, 0x1f4

    .line 60
    .line 61
    const-wide/16 v5, 0x64

    .line 62
    .line 63
    if-eqz p1, :cond_8

    .line 64
    .line 65
    invoke-direct {p0}, Lcom/kwad/components/core/widget/a;->zK()V

    .line 66
    .line 67
    .line 68
    iget-boolean p1, p0, Lcom/kwad/components/core/widget/a;->avn:Z

    .line 69
    .line 70
    if-eqz p1, :cond_5

    .line 71
    .line 72
    iget-object p1, p0, Lcom/kwad/components/core/widget/a;->avj:Lcom/kwad/components/core/widget/a$a;

    .line 73
    .line 74
    if-eqz p1, :cond_6

    .line 75
    .line 76
    iget-object v0, p0, Lcom/kwad/components/core/widget/a;->bZ:Landroid/view/View;

    .line 77
    .line 78
    invoke-interface {p1, v0}, Lcom/kwad/components/core/widget/a$a;->b(Landroid/view/View;)V

    .line 79
    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_5
    iput-boolean v2, p0, Lcom/kwad/components/core/widget/a;->avn:Z

    .line 83
    .line 84
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 85
    .line 86
    .line 87
    move-result-wide v7

    .line 88
    iput-wide v7, p0, Lcom/kwad/components/core/widget/a;->avo:J

    .line 89
    .line 90
    invoke-direct {p0}, Lcom/kwad/components/core/widget/a;->zJ()V

    .line 91
    .line 92
    .line 93
    :cond_6
    :goto_1
    iput-boolean v1, p0, Lcom/kwad/components/core/widget/a;->avp:Z

    .line 94
    .line 95
    iget-object p1, p0, Lcom/kwad/components/core/widget/a;->ca:Lcom/kwad/sdk/utils/cc;

    .line 96
    .line 97
    iget v0, p0, Lcom/kwad/components/core/widget/a;->avm:I

    .line 98
    .line 99
    add-int/lit8 v1, v0, -0x1

    .line 100
    .line 101
    iput v1, p0, Lcom/kwad/components/core/widget/a;->avm:I

    .line 102
    .line 103
    if-lez v0, :cond_7

    .line 104
    .line 105
    move-wide v3, v5

    .line 106
    :cond_7
    invoke-virtual {p1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 107
    .line 108
    .line 109
    return-void

    .line 110
    :cond_8
    iget-object p1, p0, Lcom/kwad/components/core/widget/a;->avj:Lcom/kwad/components/core/widget/a$a;

    .line 111
    .line 112
    if-eqz p1, :cond_9

    .line 113
    .line 114
    iget-boolean v0, p0, Lcom/kwad/components/core/widget/a;->avp:Z

    .line 115
    .line 116
    if-nez v0, :cond_9

    .line 117
    .line 118
    invoke-interface {p1}, Lcom/kwad/components/core/widget/a$a;->aD()V

    .line 119
    .line 120
    .line 121
    :cond_9
    iput-boolean v2, p0, Lcom/kwad/components/core/widget/a;->avp:Z

    .line 122
    .line 123
    iget-object p1, p0, Lcom/kwad/components/core/widget/a;->ca:Lcom/kwad/sdk/utils/cc;

    .line 124
    .line 125
    iget v0, p0, Lcom/kwad/components/core/widget/a;->avm:I

    .line 126
    .line 127
    add-int/lit8 v1, v0, -0x1

    .line 128
    .line 129
    iput v1, p0, Lcom/kwad/components/core/widget/a;->avm:I

    .line 130
    .line 131
    if-lez v0, :cond_a

    .line 132
    .line 133
    move-wide v3, v5

    .line 134
    :cond_a
    invoke-virtual {p1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 135
    .line 136
    .line 137
    return-void
.end method

.method public final ae()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/kwad/sdk/widget/KSFrameLayout;->ae()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x5

    .line 5
    iput v0, p0, Lcom/kwad/components/core/widget/a;->avm:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/kwad/components/core/widget/a;->avk:Z

    .line 9
    .line 10
    iput-boolean v0, p0, Lcom/kwad/components/core/widget/a;->avn:Z

    .line 11
    .line 12
    invoke-direct {p0}, Lcom/kwad/components/core/widget/a;->zL()V

    .line 13
    .line 14
    .line 15
    const-string v0, "ceshi"

    .line 16
    .line 17
    const-string v1, "onViewAttached"

    .line 18
    .line 19
    invoke-static {v0, v1}, Lcom/kwad/sdk/core/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/kwad/components/core/widget/a;->avj:Lcom/kwad/components/core/widget/a$a;

    .line 23
    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    invoke-interface {v0}, Lcom/kwad/components/core/widget/a$a;->ae()V

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void
.end method

.method public final af()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/kwad/sdk/widget/KSFrameLayout;->af()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/kwad/components/core/widget/a;->zK()V

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/kwad/components/core/widget/a;->avm:I

    .line 9
    .line 10
    const-wide/16 v0, 0x0

    .line 11
    .line 12
    iput-wide v0, p0, Lcom/kwad/components/core/widget/a;->avo:J

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    iput-boolean v0, p0, Lcom/kwad/components/core/widget/a;->avk:Z

    .line 16
    .line 17
    iget-object v0, p0, Lcom/kwad/components/core/widget/a;->avj:Lcom/kwad/components/core/widget/a$a;

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    invoke-interface {v0}, Lcom/kwad/components/core/widget/a$a;->af()V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public final onWindowFocusChanged(Z)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/kwad/sdk/widget/KSFrameLayout;->onWindowFocusChanged(Z)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    const-string v1, "onWindowFocusChanged hasWindowFocus:"

    .line 7
    .line 8
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "AdExposureView"

    .line 19
    .line 20
    invoke-static {v1, v0}, Lcom/kwad/sdk/core/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/kwad/components/core/widget/a;->avj:Lcom/kwad/components/core/widget/a$a;

    .line 24
    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    invoke-interface {v0, p1}, Lcom/kwad/components/core/widget/a$a;->onWindowFocusChanged(Z)V

    .line 28
    .line 29
    .line 30
    :cond_0
    return-void
.end method

.method public final setViewCallback(Lcom/kwad/components/core/widget/a$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/core/widget/a;->avj:Lcom/kwad/components/core/widget/a$a;

    .line 2
    .line 3
    return-void
.end method

.method public final zM()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/kwad/components/core/widget/a;->zL()V

    .line 2
    .line 3
    .line 4
    return-void
.end method
