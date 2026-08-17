.class public LB0/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/flutter/plugin/platform/PlatformView;


# instance fields
.field public final b:Landroid/widget/LinearLayout;

.field public final c:Ljava/util/Map;

.field public final d:Landroid/app/Activity;

.field public final e:Lio/flutter/plugin/common/MethodChannel;

.field public f:I

.field public final g:Lcom/anythink/nativead/api/ATNativeAdView;

.field public h:Lcom/anythink/nativead/api/ATNative;

.field public i:Lcom/anythink/nativead/api/NativeAd;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lio/flutter/plugin/common/BinaryMessenger;ILjava/util/Map;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, LB0/d;->f:I

    .line 6
    .line 7
    iput-object p4, p0, LB0/d;->c:Ljava/util/Map;

    .line 8
    .line 9
    iput-object p1, p0, LB0/d;->d:Landroid/app/Activity;

    .line 10
    .line 11
    const-string v1, "height"

    .line 12
    .line 13
    invoke-interface {p4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p4

    .line 17
    check-cast p4, Ljava/lang/Integer;

    .line 18
    .line 19
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    .line 20
    .line 21
    .line 22
    move-result p4

    .line 23
    new-instance v1, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    .line 28
    const-string v2, "native framework layout height(dp):"

    .line 29
    .line 30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p4

    .line 40
    invoke-static {p4}, LE0/a;->a(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    new-instance p4, Landroid/widget/LinearLayout;

    .line 44
    .line 45
    invoke-direct {p4, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 46
    .line 47
    .line 48
    iput-object p4, p0, LB0/d;->b:Landroid/widget/LinearLayout;

    .line 49
    .line 50
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    .line 51
    .line 52
    const/4 v2, -0x1

    .line 53
    const/4 v3, -0x2

    .line 54
    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p4, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p4, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 61
    .line 62
    .line 63
    const/16 v0, 0x30

    .line 64
    .line 65
    invoke-virtual {p4, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 66
    .line 67
    .line 68
    const/4 v1, 0x1

    .line 69
    invoke-virtual {p4, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 70
    .line 71
    .line 72
    new-instance v1, Lcom/anythink/nativead/api/ATNativeAdView;

    .line 73
    .line 74
    invoke-direct {v1, p1}, Lcom/anythink/nativead/api/ATNativeAdView;-><init>(Landroid/content/Context;)V

    .line 75
    .line 76
    .line 77
    iput-object v1, p0, LB0/d;->g:Lcom/anythink/nativead/api/ATNativeAdView;

    .line 78
    .line 79
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 80
    .line 81
    invoke-direct {p1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 82
    .line 83
    .line 84
    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 85
    .line 86
    invoke-virtual {v1, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p4, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 90
    .line 91
    .line 92
    new-instance p1, Lio/flutter/plugin/common/MethodChannel;

    .line 93
    .line 94
    new-instance p4, Ljava/lang/StringBuilder;

    .line 95
    .line 96
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 97
    .line 98
    .line 99
    const-string v0, "com.flutter.advert/NativeAdView_"

    .line 100
    .line 101
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p3

    .line 111
    invoke-direct {p1, p2, p3}, Lio/flutter/plugin/common/MethodChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    iput-object p1, p0, LB0/d;->e:Lio/flutter/plugin/common/MethodChannel;

    .line 115
    .line 116
    invoke-virtual {p0}, LB0/d;->i()V

    .line 117
    .line 118
    .line 119
    return-void
.end method

.method public static synthetic a(LB0/d;IIIII)V
    .locals 9

    .line 1
    invoke-virtual {p0, p1}, LB0/d;->h(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, LB0/d;->g:Lcom/anythink/nativead/api/ATNativeAdView;

    .line 6
    .line 7
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const/4 v3, 0x0

    .line 12
    if-lez v2, :cond_0

    .line 13
    .line 14
    iget-object v1, p0, LB0/d;->g:Lcom/anythink/nativead/api/ATNativeAdView;

    .line 15
    .line 16
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    :cond_0
    const/high16 v2, 0x40000000    # 2.0f

    .line 21
    .line 22
    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    invoke-virtual {v1, v0, v2}, Landroid/view/View;->measure(II)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    iget-object v3, p0, LB0/d;->g:Lcom/anythink/nativead/api/ATNativeAdView;

    .line 38
    .line 39
    invoke-virtual {v3, v0, v2}, Landroid/view/View;->measure(II)V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, LB0/d;->g:Lcom/anythink/nativead/api/ATNativeAdView;

    .line 43
    .line 44
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 49
    .line 50
    .line 51
    move-result v8

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    .line 56
    .line 57
    const-string v1, "measure try="

    .line 58
    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    const-string v1, " childCount="

    .line 66
    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    iget-object v1, p0, LB0/d;->g:Lcom/anythink/nativead/api/ATNativeAdView;

    .line 71
    .line 72
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    const-string v1, " measuredPx="

    .line 80
    .line 81
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    const-string v1, "adDemo"

    .line 92
    .line 93
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    .line 95
    .line 96
    const/16 v0, 0x50

    .line 97
    .line 98
    invoke-virtual {p0, v0}, LB0/d;->h(I)I

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    if-gt v8, v0, :cond_2

    .line 103
    .line 104
    if-ge p2, p3, :cond_1

    .line 105
    .line 106
    iget-object p5, p0, LB0/d;->g:Lcom/anythink/nativead/api/ATNativeAdView;

    .line 107
    .line 108
    new-instance v2, LB0/b;

    .line 109
    .line 110
    move-object v3, p0

    .line 111
    move v4, p1

    .line 112
    move v5, p2

    .line 113
    move v6, p3

    .line 114
    move v7, p4

    .line 115
    invoke-direct/range {v2 .. v8}, LB0/b;-><init>(LB0/d;IIIII)V

    .line 116
    .line 117
    .line 118
    int-to-long p0, v7

    .line 119
    invoke-virtual {p5, v2, p0, p1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 120
    .line 121
    .line 122
    return-void

    .line 123
    :cond_1
    move-object v3, p0

    .line 124
    const/16 p0, 0xfa

    .line 125
    .line 126
    invoke-virtual {v3, p0}, LB0/d;->h(I)I

    .line 127
    .line 128
    .line 129
    move-result p0

    .line 130
    invoke-virtual {v3, p0}, LB0/d;->g(I)V

    .line 131
    .line 132
    .line 133
    return-void

    .line 134
    :cond_2
    move-object v3, p0

    .line 135
    move v4, p1

    .line 136
    move v5, p2

    .line 137
    move v6, p3

    .line 138
    move v7, p4

    .line 139
    if-ge v5, v6, :cond_3

    .line 140
    .line 141
    sub-int p0, v8, p5

    .line 142
    .line 143
    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    .line 144
    .line 145
    .line 146
    move-result p0

    .line 147
    const/4 p1, 0x2

    .line 148
    invoke-virtual {v3, p1}, LB0/d;->h(I)I

    .line 149
    .line 150
    .line 151
    move-result p1

    .line 152
    if-le p0, p1, :cond_3

    .line 153
    .line 154
    iget-object p0, v3, LB0/d;->g:Lcom/anythink/nativead/api/ATNativeAdView;

    .line 155
    .line 156
    new-instance v2, LB0/c;

    .line 157
    .line 158
    invoke-direct/range {v2 .. v8}, LB0/c;-><init>(LB0/d;IIIII)V

    .line 159
    .line 160
    .line 161
    int-to-long p1, v7

    .line 162
    invoke-virtual {p0, v2, p1, p2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 163
    .line 164
    .line 165
    :cond_3
    invoke-virtual {v3, v8}, LB0/d;->g(I)V

    .line 166
    .line 167
    .line 168
    return-void
.end method

.method public static synthetic b(LB0/d;IIIII)V
    .locals 0

    .line 1
    add-int/lit8 p2, p2, 0x1

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p5}, LB0/d;->m(IIIII)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static synthetic c(LB0/d;IIIII)V
    .locals 0

    .line 1
    add-int/lit8 p2, p2, 0x1

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p5}, LB0/d;->m(IIIII)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static bridge synthetic d(LB0/d;)Lcom/anythink/nativead/api/ATNative;
    .locals 0

    .line 1
    iget-object p0, p0, LB0/d;->h:Lcom/anythink/nativead/api/ATNative;

    return-object p0
.end method

.method public static bridge synthetic e(LB0/d;)Lio/flutter/plugin/common/MethodChannel;
    .locals 0

    .line 1
    iget-object p0, p0, LB0/d;->e:Lio/flutter/plugin/common/MethodChannel;

    return-object p0
.end method

.method public static bridge synthetic f(LB0/d;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, LB0/d;->j(I)V

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, LB0/d;->i:Lcom/anythink/nativead/api/NativeAd;

    .line 3
    .line 4
    if-eqz v1, :cond_0

    .line 5
    .line 6
    invoke-virtual {v1}, Lcom/anythink/nativead/api/NativeAd;->destory()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, LB0/d;->i:Lcom/anythink/nativead/api/NativeAd;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    .line 11
    :catchall_0
    :cond_0
    :try_start_1
    iget-object v1, p0, LB0/d;->h:Lcom/anythink/nativead/api/ATNative;

    .line 12
    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    iput-object v0, p0, LB0/d;->h:Lcom/anythink/nativead/api/ATNative;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 16
    .line 17
    :catchall_1
    :cond_1
    :try_start_2
    iget-object v0, p0, LB0/d;->b:Landroid/widget/LinearLayout;

    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 20
    .line 21
    .line 22
    :catchall_2
    return-void
.end method

.method public final g(I)V
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, LB0/d;->k(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x1e

    .line 6
    .line 7
    const-string v2, "adDemo"

    .line 8
    .line 9
    if-ge v0, v1, :cond_0

    .line 10
    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v3, "ignore too small height dp="

    .line 17
    .line 18
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v0, " px="

    .line 25
    .line 26
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :cond_0
    iget v1, p0, LB0/d;->f:I

    .line 41
    .line 42
    if-gt v0, v1, :cond_1

    .line 43
    .line 44
    new-instance p1, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    .line 48
    .line 49
    const-string v1, "skip smaller height: "

    .line 50
    .line 51
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string v0, " last="

    .line 58
    .line 59
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    iget v0, p0, LB0/d;->f:I

    .line 63
    .line 64
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    .line 73
    .line 74
    return-void

    .line 75
    :cond_1
    iput v0, p0, LB0/d;->f:I

    .line 76
    .line 77
    iget-object v1, p0, LB0/d;->b:Landroid/widget/LinearLayout;

    .line 78
    .line 79
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    if-eqz v1, :cond_2

    .line 84
    .line 85
    iput p1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 86
    .line 87
    iget-object v3, p0, LB0/d;->b:Landroid/widget/LinearLayout;

    .line 88
    .line 89
    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 90
    .line 91
    .line 92
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 93
    .line 94
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    .line 96
    .line 97
    const-string v3, "report height px="

    .line 98
    .line 99
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    const-string p1, " dp="

    .line 106
    .line 107
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    .line 119
    .line 120
    iget-object p1, p0, LB0/d;->e:Lio/flutter/plugin/common/MethodChannel;

    .line 121
    .line 122
    const-string v1, "onShow"

    .line 123
    .line 124
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    invoke-virtual {p1, v1, v0}, Lio/flutter/plugin/common/MethodChannel;->invokeMethod(Ljava/lang/String;Ljava/lang/Object;)V

    .line 129
    .line 130
    .line 131
    return-void
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, LB0/d;->b:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    return-object v0
.end method

.method public final h(I)I
    .locals 3

    .line 1
    iget-object v0, p0, LB0/d;->g:Lcom/anythink/nativead/api/ATNativeAdView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 12
    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    const-string v2, "dpToPx density="

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    const-string v2, "adDemo"

    .line 31
    .line 32
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    int-to-float p1, p1

    .line 36
    mul-float/2addr p1, v0

    .line 37
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    return p1
.end method

.method public i()V
    .locals 5

    .line 1
    iget-object v0, p0, LB0/d;->c:Ljava/util/Map;

    .line 2
    .line 3
    const-string v1, "width"

    .line 4
    .line 5
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Ljava/lang/Integer;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    iget-object v1, p0, LB0/d;->c:Ljava/util/Map;

    .line 16
    .line 17
    const-string v2, "adId"

    .line 18
    .line 19
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Ljava/lang/String;

    .line 24
    .line 25
    new-instance v2, LB0/d$a;

    .line 26
    .line 27
    invoke-direct {v2, p0}, LB0/d$a;-><init>(LB0/d;)V

    .line 28
    .line 29
    .line 30
    new-instance v3, Lcom/anythink/nativead/api/ATNative;

    .line 31
    .line 32
    iget-object v4, p0, LB0/d;->d:Landroid/app/Activity;

    .line 33
    .line 34
    invoke-direct {v3, v4, v1, v2}, Lcom/anythink/nativead/api/ATNative;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/anythink/nativead/api/ATNativeNetworkListener;)V

    .line 35
    .line 36
    .line 37
    iput-object v3, p0, LB0/d;->h:Lcom/anythink/nativead/api/ATNative;

    .line 38
    .line 39
    new-instance v1, Ljava/util/HashMap;

    .line 40
    .line 41
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, v0}, LB0/d;->h(I)I

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    const-string v2, "key_width"

    .line 49
    .line 50
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    const/4 v0, 0x0

    .line 58
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    const-string v2, "key_height"

    .line 63
    .line 64
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    iget-object v0, p0, LB0/d;->h:Lcom/anythink/nativead/api/ATNative;

    .line 68
    .line 69
    invoke-virtual {v0, v1}, Lcom/anythink/nativead/api/ATNative;->setLocalExtra(Ljava/util/Map;)V

    .line 70
    .line 71
    .line 72
    iget-object v0, p0, LB0/d;->h:Lcom/anythink/nativead/api/ATNative;

    .line 73
    .line 74
    invoke-virtual {v0}, Lcom/anythink/nativead/api/ATNative;->makeAdRequest()V

    .line 75
    .line 76
    .line 77
    return-void
.end method

.method public final j(I)V
    .locals 6

    .line 1
    const/16 v4, 0x32

    .line 2
    .line 3
    const/4 v5, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    const/16 v3, 0xa

    .line 6
    .line 7
    move-object v0, p0

    .line 8
    move v1, p1

    .line 9
    invoke-virtual/range {v0 .. v5}, LB0/d;->m(IIIII)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final k(I)I
    .locals 3

    .line 1
    iget-object v0, p0, LB0/d;->g:Lcom/anythink/nativead/api/ATNativeAdView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 12
    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    const-string v2, "pxToDp density="

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    const-string v2, "adDemo"

    .line 31
    .line 32
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    int-to-float p1, p1

    .line 36
    div-float/2addr p1, v0

    .line 37
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    return p1
.end method

.method public l()V
    .locals 3

    .line 1
    iget-object v0, p0, LB0/d;->h:Lcom/anythink/nativead/api/ATNative;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0}, Lcom/anythink/nativead/api/ATNative;->checkAdStatus()Lcom/anythink/core/api/ATAdStatusInfo;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lcom/anythink/core/api/ATAdStatusInfo;->isReady()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    iget-object v0, p0, LB0/d;->h:Lcom/anythink/nativead/api/ATNative;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/anythink/nativead/api/ATNative;->getNativeAd()Lcom/anythink/nativead/api/NativeAd;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-nez v0, :cond_2

    .line 24
    .line 25
    :goto_0
    return-void

    .line 26
    :cond_2
    iget-object v1, p0, LB0/d;->i:Lcom/anythink/nativead/api/NativeAd;

    .line 27
    .line 28
    if-eqz v1, :cond_3

    .line 29
    .line 30
    :try_start_0
    invoke-virtual {v1}, Lcom/anythink/nativead/api/NativeAd;->destory()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    .line 32
    .line 33
    :catchall_0
    :cond_3
    iput-object v0, p0, LB0/d;->i:Lcom/anythink/nativead/api/NativeAd;

    .line 34
    .line 35
    iget-object v1, p0, LB0/d;->g:Lcom/anythink/nativead/api/ATNativeAdView;

    .line 36
    .line 37
    const/4 v2, 0x0

    .line 38
    invoke-virtual {v0, v1, v2}, Lcom/anythink/nativead/api/NativeAd;->renderAdContainer(Lcom/anythink/nativead/api/ATNativeAdView;Landroid/view/View;)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, LB0/d;->i:Lcom/anythink/nativead/api/NativeAd;

    .line 42
    .line 43
    iget-object v1, p0, LB0/d;->g:Lcom/anythink/nativead/api/ATNativeAdView;

    .line 44
    .line 45
    invoke-virtual {v0, v1, v2}, Lcom/anythink/nativead/api/NativeAd;->prepare(Lcom/anythink/nativead/api/ATNativeAdView;Lcom/anythink/nativead/api/ATNativePrepareInfo;)V

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, LB0/d;->g:Lcom/anythink/nativead/api/ATNativeAdView;

    .line 49
    .line 50
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 51
    .line 52
    .line 53
    iget-object v0, p0, LB0/d;->b:Landroid/widget/LinearLayout;

    .line 54
    .line 55
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 56
    .line 57
    .line 58
    iget-object v0, p0, LB0/d;->c:Ljava/util/Map;

    .line 59
    .line 60
    const-string v1, "width"

    .line 61
    .line 62
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    check-cast v0, Ljava/lang/Integer;

    .line 67
    .line 68
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    invoke-virtual {p0, v0}, LB0/d;->j(I)V

    .line 73
    .line 74
    .line 75
    iget-object v1, p0, LB0/d;->i:Lcom/anythink/nativead/api/NativeAd;

    .line 76
    .line 77
    new-instance v2, LB0/d$b;

    .line 78
    .line 79
    invoke-direct {v2, p0, v0}, LB0/d$b;-><init>(LB0/d;I)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v1, v2}, Lcom/anythink/nativead/api/NativeAd;->setNativeEventListener(Lcom/anythink/nativead/api/ATNativeEventListener;)V

    .line 83
    .line 84
    .line 85
    iget-object v0, p0, LB0/d;->i:Lcom/anythink/nativead/api/NativeAd;

    .line 86
    .line 87
    new-instance v1, LB0/d$c;

    .line 88
    .line 89
    invoke-direct {v1, p0}, LB0/d$c;-><init>(LB0/d;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0, v1}, Lcom/anythink/nativead/api/NativeAd;->setDislikeCallbackListener(Lcom/anythink/nativead/api/ATNativeDislikeListener;)V

    .line 93
    .line 94
    .line 95
    return-void
.end method

.method public final m(IIIII)V
    .locals 8

    .line 1
    iget-object v0, p0, LB0/d;->g:Lcom/anythink/nativead/api/ATNativeAdView;

    .line 2
    .line 3
    new-instance v1, LB0/a;

    .line 4
    .line 5
    move-object v2, p0

    .line 6
    move v3, p1

    .line 7
    move v4, p2

    .line 8
    move v5, p3

    .line 9
    move v6, p4

    .line 10
    move v7, p5

    .line 11
    invoke-direct/range {v1 .. v7}, LB0/a;-><init>(LB0/d;IIIII)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 15
    .line 16
    .line 17
    return-void
.end method
