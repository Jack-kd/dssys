.class public Lcom/meishu/sdk/platform/ms/recycler/l$d$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/platform/ms/recycler/l$d;->safeRun()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/meishu/sdk/platform/ms/recycler/l$d;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/ms/recycler/l$d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/ms/recycler/l$d$c;->a:Lcom/meishu/sdk/platform/ms/recycler/l$d;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 13

    .line 1
    const/4 p1, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    iget-object p2, p0, Lcom/meishu/sdk/platform/ms/recycler/l$d$c;->a:Lcom/meishu/sdk/platform/ms/recycler/l$d;

    .line 9
    .line 10
    iget-object p2, p2, Lcom/meishu/sdk/platform/ms/recycler/l$d;->d:Lcom/meishu/sdk/platform/ms/recycler/l;

    .line 11
    .line 12
    invoke-virtual {p2}, Lcom/meishu/sdk/platform/ms/recycler/l;->c()V

    .line 13
    .line 14
    .line 15
    goto/16 :goto_2

    .line 16
    .line 17
    :catch_0
    move-exception v0

    .line 18
    move-object p2, v0

    .line 19
    goto/16 :goto_1

    .line 20
    .line 21
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    const/4 v1, 0x1

    .line 26
    if-ne v0, v1, :cond_4

    .line 27
    .line 28
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/l$d$c;->a:Lcom/meishu/sdk/platform/ms/recycler/l$d;

    .line 29
    .line 30
    iget-object v0, v0, Lcom/meishu/sdk/platform/ms/recycler/l$d;->d:Lcom/meishu/sdk/platform/ms/recycler/l;

    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/l$d$c;->a:Lcom/meishu/sdk/platform/ms/recycler/l$d;

    .line 36
    .line 37
    iget-object v0, v0, Lcom/meishu/sdk/platform/ms/recycler/l$d;->d:Lcom/meishu/sdk/platform/ms/recycler/l;

    .line 38
    .line 39
    iget-object v0, v0, Lcom/meishu/sdk/platform/ms/recycler/l;->k:Landroid/widget/FrameLayout;

    .line 40
    .line 41
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 54
    .line 55
    sget v1, Lcom/meishu/sdk/platform/ms/recycler/t;->d:F

    .line 56
    .line 57
    const/4 v2, 0x0

    .line 58
    cmpl-float v3, v1, v2

    .line 59
    .line 60
    if-lez v3, :cond_1

    .line 61
    .line 62
    sget v3, Lcom/meishu/sdk/platform/ms/recycler/t;->e:F

    .line 63
    .line 64
    cmpl-float v3, v3, v2

    .line 65
    .line 66
    if-lez v3, :cond_1

    .line 67
    .line 68
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    .line 69
    .line 70
    .line 71
    move-result v3

    .line 72
    sub-float/2addr v1, v3

    .line 73
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    sget v3, Lcom/meishu/sdk/platform/ms/recycler/t;->e:F

    .line 78
    .line 79
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    .line 80
    .line 81
    .line 82
    move-result v4

    .line 83
    sub-float/2addr v3, v4

    .line 84
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    .line 85
    .line 86
    .line 87
    move-result v3

    .line 88
    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    goto :goto_0

    .line 93
    :cond_1
    move v1, v2

    .line 94
    :goto_0
    iget-object v3, p0, Lcom/meishu/sdk/platform/ms/recycler/l$d$c;->a:Lcom/meishu/sdk/platform/ms/recycler/l$d;

    .line 95
    .line 96
    iget-object v3, v3, Lcom/meishu/sdk/platform/ms/recycler/l$d;->d:Lcom/meishu/sdk/platform/ms/recycler/l;

    .line 97
    .line 98
    iget v3, v3, Lcom/meishu/sdk/platform/ms/recycler/l;->j:I

    .line 99
    .line 100
    int-to-float v3, v3

    .line 101
    cmpl-float v3, v1, v3

    .line 102
    .line 103
    if-lez v3, :cond_2

    .line 104
    .line 105
    const-string v3, "MeishuRecyclerAdDataAda"

    .line 106
    .line 107
    const-string v4, "use rawXY"

    .line 108
    .line 109
    invoke-static {v3, v4}, Lcom/meishu/sdk/core/utils/LogUtil;->dev(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    :cond_2
    iget-object v3, p0, Lcom/meishu/sdk/platform/ms/recycler/l$d$c;->a:Lcom/meishu/sdk/platform/ms/recycler/l$d;

    .line 113
    .line 114
    iget-object v3, v3, Lcom/meishu/sdk/platform/ms/recycler/l$d;->d:Lcom/meishu/sdk/platform/ms/recycler/l;

    .line 115
    .line 116
    iget v4, v3, Lcom/meishu/sdk/platform/ms/recycler/l;->j:I

    .line 117
    .line 118
    int-to-float v4, v4

    .line 119
    invoke-static {v4, v1}, Ljava/lang/Math;->max(FF)F

    .line 120
    .line 121
    .line 122
    move-result v1

    .line 123
    float-to-int v1, v1

    .line 124
    iput v1, v3, Lcom/meishu/sdk/platform/ms/recycler/l;->j:I

    .line 125
    .line 126
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/recycler/l$d$c;->a:Lcom/meishu/sdk/platform/ms/recycler/l$d;

    .line 127
    .line 128
    iget-object v1, v1, Lcom/meishu/sdk/platform/ms/recycler/l$d;->d:Lcom/meishu/sdk/platform/ms/recycler/l;

    .line 129
    .line 130
    invoke-virtual {v1}, Lcom/meishu/sdk/platform/ms/recycler/l;->e()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    iget-object v3, p0, Lcom/meishu/sdk/platform/ms/recycler/l$d$c;->a:Lcom/meishu/sdk/platform/ms/recycler/l$d;

    .line 135
    .line 136
    iget-object v3, v3, Lcom/meishu/sdk/platform/ms/recycler/l$d;->d:Lcom/meishu/sdk/platform/ms/recycler/l;

    .line 137
    .line 138
    iget v3, v3, Lcom/meishu/sdk/platform/ms/recycler/l;->j:I

    .line 139
    .line 140
    invoke-static {v1, p2, v0, v3}, Lcom/meishu/sdk/platform/ms/recycler/t;->a(Ljava/lang/String;Landroid/view/MotionEvent;FI)Lcom/meishu/sdk/core/view/TouchPoint;

    .line 141
    .line 142
    .line 143
    move-result-object p2

    .line 144
    if-nez p2, :cond_3

    .line 145
    .line 146
    return p1

    .line 147
    :cond_3
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/recycler/l$d$c;->a:Lcom/meishu/sdk/platform/ms/recycler/l$d;

    .line 148
    .line 149
    iget-object v3, v1, Lcom/meishu/sdk/platform/ms/recycler/l$d;->d:Lcom/meishu/sdk/platform/ms/recycler/l;

    .line 150
    .line 151
    iget v11, v3, Lcom/meishu/sdk/platform/ms/recycler/l;->j:I

    .line 152
    .line 153
    int-to-float v4, v11

    .line 154
    div-float/2addr v4, v0

    .line 155
    sget v0, Lcom/meishu/sdk/platform/ms/recycler/l;->p:I

    .line 156
    .line 157
    int-to-float v0, v0

    .line 158
    cmpl-float v0, v4, v0

    .line 159
    .line 160
    if-lez v0, :cond_4

    .line 161
    .line 162
    iget v5, p2, Lcom/meishu/sdk/core/view/TouchPoint;->downX:F

    .line 163
    .line 164
    cmpl-float v0, v5, v2

    .line 165
    .line 166
    if-lez v0, :cond_4

    .line 167
    .line 168
    iget v6, p2, Lcom/meishu/sdk/core/view/TouchPoint;->downY:F

    .line 169
    .line 170
    cmpl-float v0, v6, v2

    .line 171
    .line 172
    if-lez v0, :cond_4

    .line 173
    .line 174
    iget-object v4, v1, Lcom/meishu/sdk/platform/ms/recycler/l$d;->a:Landroid/view/ViewGroup;

    .line 175
    .line 176
    iget-wide v7, p2, Lcom/meishu/sdk/core/view/TouchPoint;->downTime:J

    .line 177
    .line 178
    iget v9, p2, Lcom/meishu/sdk/core/view/TouchPoint;->upX:F

    .line 179
    .line 180
    iget v10, p2, Lcom/meishu/sdk/core/view/TouchPoint;->upY:F

    .line 181
    .line 182
    const/4 v12, 0x1

    .line 183
    invoke-virtual/range {v3 .. v12}, Lcom/meishu/sdk/platform/ms/recycler/l;->a(Landroid/view/ViewGroup;FFJFFIZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    .line 185
    .line 186
    goto :goto_2

    .line 187
    :goto_1
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 188
    .line 189
    .line 190
    :cond_4
    :goto_2
    return p1
.end method
