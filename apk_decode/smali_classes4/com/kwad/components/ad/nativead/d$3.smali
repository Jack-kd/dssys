.class final Lcom/kwad/components/ad/nativead/d$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/components/ad/nativead/d;->a(Landroid/app/Activity;Landroid/view/ViewGroup;ILandroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dJ:Landroid/view/ViewGroup;

.field final synthetic pE:Lcom/kwad/components/ad/nativead/d;

.field private pF:[I

.field final synthetic pG:Lcom/kwad/sdk/utils/al$a;

.field final synthetic pH:[I

.field final synthetic pI:Landroid/view/View;

.field final synthetic pJ:Landroid/app/Activity;

.field final synthetic pK:Z


# direct methods
.method public constructor <init>(Lcom/kwad/components/ad/nativead/d;Lcom/kwad/sdk/utils/al$a;Landroid/view/ViewGroup;[ILandroid/view/View;Landroid/app/Activity;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/ad/nativead/d$3;->pE:Lcom/kwad/components/ad/nativead/d;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/kwad/components/ad/nativead/d$3;->pG:Lcom/kwad/sdk/utils/al$a;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/kwad/components/ad/nativead/d$3;->dJ:Landroid/view/ViewGroup;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/kwad/components/ad/nativead/d$3;->pH:[I

    .line 8
    .line 9
    iput-object p5, p0, Lcom/kwad/components/ad/nativead/d$3;->pI:Landroid/view/View;

    .line 10
    .line 11
    iput-object p6, p0, Lcom/kwad/components/ad/nativead/d$3;->pJ:Landroid/app/Activity;

    .line 12
    .line 13
    iput-boolean p7, p0, Lcom/kwad/components/ad/nativead/d$3;->pK:Z

    .line 14
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    .line 17
    .line 18
    const/4 p1, 0x2

    .line 19
    new-array p1, p1, [I

    .line 20
    .line 21
    iput-object p1, p0, Lcom/kwad/components/ad/nativead/d$3;->pF:[I

    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x1

    .line 9
    if-eqz v1, :cond_4

    .line 10
    .line 11
    if-eq v1, v3, :cond_0

    .line 12
    .line 13
    goto/16 :goto_0

    .line 14
    .line 15
    :cond_0
    iget-object v1, v0, Lcom/kwad/components/ad/nativead/d$3;->pG:Lcom/kwad/sdk/utils/al$a;

    .line 16
    .line 17
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    iget-object v5, v0, Lcom/kwad/components/ad/nativead/d$3;->pF:[I

    .line 22
    .line 23
    aget v5, v5, v2

    .line 24
    .line 25
    int-to-float v5, v5

    .line 26
    sub-float/2addr v4, v5

    .line 27
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    .line 32
    .line 33
    .line 34
    move-result v5

    .line 35
    iget-object v6, v0, Lcom/kwad/components/ad/nativead/d$3;->pF:[I

    .line 36
    .line 37
    aget v6, v6, v3

    .line 38
    .line 39
    int-to-float v6, v6

    .line 40
    sub-float/2addr v5, v6

    .line 41
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    .line 42
    .line 43
    .line 44
    move-result v5

    .line 45
    invoke-virtual {v1, v4, v5}, Lcom/kwad/sdk/utils/al$a;->k(FF)V

    .line 46
    .line 47
    .line 48
    iget-object v1, v0, Lcom/kwad/components/ad/nativead/d$3;->pG:Lcom/kwad/sdk/utils/al$a;

    .line 49
    .line 50
    invoke-static {v1}, Lcom/kwad/sdk/utils/b;->g(Lcom/kwad/sdk/utils/al$a;)Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-eqz v1, :cond_2

    .line 55
    .line 56
    iget-object v1, v0, Lcom/kwad/components/ad/nativead/d$3;->pH:[I

    .line 57
    .line 58
    const/4 v4, 0x2

    .line 59
    aget v1, v1, v4

    .line 60
    .line 61
    if-eq v1, v3, :cond_1

    .line 62
    .line 63
    iget-object v1, v0, Lcom/kwad/components/ad/nativead/d$3;->pE:Lcom/kwad/components/ad/nativead/d;

    .line 64
    .line 65
    iget-object v4, v0, Lcom/kwad/components/ad/nativead/d$3;->pG:Lcom/kwad/sdk/utils/al$a;

    .line 66
    .line 67
    invoke-static {v1, v4}, Lcom/kwad/components/ad/nativead/d;->a(Lcom/kwad/components/ad/nativead/d;Lcom/kwad/sdk/utils/al$a;)Z

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    if-eqz v1, :cond_1

    .line 72
    .line 73
    iget-object v1, v0, Lcom/kwad/components/ad/nativead/d$3;->pI:Landroid/view/View;

    .line 74
    .line 75
    invoke-virtual {v1, v2}, Landroid/view/View;->setPressed(Z)V

    .line 76
    .line 77
    .line 78
    iget-object v4, v0, Lcom/kwad/components/ad/nativead/d$3;->pE:Lcom/kwad/components/ad/nativead/d;

    .line 79
    .line 80
    iget-object v5, v0, Lcom/kwad/components/ad/nativead/d$3;->pJ:Landroid/app/Activity;

    .line 81
    .line 82
    iget-object v7, v0, Lcom/kwad/components/ad/nativead/d$3;->pG:Lcom/kwad/sdk/utils/al$a;

    .line 83
    .line 84
    iget-object v1, v0, Lcom/kwad/components/ad/nativead/d$3;->pH:[I

    .line 85
    .line 86
    aget v8, v1, v2

    .line 87
    .line 88
    iget-boolean v9, v0, Lcom/kwad/components/ad/nativead/d$3;->pK:Z

    .line 89
    .line 90
    const/16 v10, 0x99

    .line 91
    .line 92
    move-object/from16 v6, p1

    .line 93
    .line 94
    invoke-static/range {v4 .. v10}, Lcom/kwad/components/ad/nativead/d;->a(Lcom/kwad/components/ad/nativead/d;Landroid/app/Activity;Landroid/view/View;Lcom/kwad/sdk/utils/al$a;IZI)V

    .line 95
    .line 96
    .line 97
    :cond_1
    return v3

    .line 98
    :cond_2
    iget-object v1, v0, Lcom/kwad/components/ad/nativead/d$3;->pH:[I

    .line 99
    .line 100
    aget v1, v1, v3

    .line 101
    .line 102
    if-eq v1, v3, :cond_5

    .line 103
    .line 104
    invoke-static {}, Lcom/kwad/sdk/core/config/e;->Jm()Z

    .line 105
    .line 106
    .line 107
    move-result v1

    .line 108
    if-eqz v1, :cond_5

    .line 109
    .line 110
    iget-object v1, v0, Lcom/kwad/components/ad/nativead/d$3;->pE:Lcom/kwad/components/ad/nativead/d;

    .line 111
    .line 112
    iget-object v4, v0, Lcom/kwad/components/ad/nativead/d$3;->pG:Lcom/kwad/sdk/utils/al$a;

    .line 113
    .line 114
    invoke-static {v1, v4}, Lcom/kwad/components/ad/nativead/d;->b(Lcom/kwad/components/ad/nativead/d;Lcom/kwad/sdk/utils/al$a;)Z

    .line 115
    .line 116
    .line 117
    move-result v1

    .line 118
    if-eqz v1, :cond_3

    .line 119
    .line 120
    iget-object v11, v0, Lcom/kwad/components/ad/nativead/d$3;->pE:Lcom/kwad/components/ad/nativead/d;

    .line 121
    .line 122
    iget-object v12, v0, Lcom/kwad/components/ad/nativead/d$3;->pJ:Landroid/app/Activity;

    .line 123
    .line 124
    iget-object v14, v0, Lcom/kwad/components/ad/nativead/d$3;->pG:Lcom/kwad/sdk/utils/al$a;

    .line 125
    .line 126
    iget-object v1, v0, Lcom/kwad/components/ad/nativead/d$3;->pH:[I

    .line 127
    .line 128
    aget v15, v1, v2

    .line 129
    .line 130
    iget-boolean v1, v0, Lcom/kwad/components/ad/nativead/d$3;->pK:Z

    .line 131
    .line 132
    const/16 v17, 0x0

    .line 133
    .line 134
    move-object/from16 v13, p1

    .line 135
    .line 136
    move/from16 v16, v1

    .line 137
    .line 138
    invoke-static/range {v11 .. v17}, Lcom/kwad/components/ad/nativead/d;->a(Lcom/kwad/components/ad/nativead/d;Landroid/app/Activity;Landroid/view/View;Lcom/kwad/sdk/utils/al$a;IZI)V

    .line 139
    .line 140
    .line 141
    :cond_3
    return v3

    .line 142
    :cond_4
    iget-object v1, v0, Lcom/kwad/components/ad/nativead/d$3;->pG:Lcom/kwad/sdk/utils/al$a;

    .line 143
    .line 144
    iget-object v4, v0, Lcom/kwad/components/ad/nativead/d$3;->dJ:Landroid/view/ViewGroup;

    .line 145
    .line 146
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    .line 147
    .line 148
    .line 149
    move-result v4

    .line 150
    iget-object v5, v0, Lcom/kwad/components/ad/nativead/d$3;->dJ:Landroid/view/ViewGroup;

    .line 151
    .line 152
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    .line 153
    .line 154
    .line 155
    move-result v5

    .line 156
    invoke-virtual {v1, v4, v5}, Lcom/kwad/sdk/utils/al$a;->H(II)V

    .line 157
    .line 158
    .line 159
    iget-object v1, v0, Lcom/kwad/components/ad/nativead/d$3;->dJ:Landroid/view/ViewGroup;

    .line 160
    .line 161
    iget-object v4, v0, Lcom/kwad/components/ad/nativead/d$3;->pF:[I

    .line 162
    .line 163
    invoke-virtual {v1, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 164
    .line 165
    .line 166
    iget-object v1, v0, Lcom/kwad/components/ad/nativead/d$3;->pG:Lcom/kwad/sdk/utils/al$a;

    .line 167
    .line 168
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    .line 169
    .line 170
    .line 171
    move-result v4

    .line 172
    iget-object v5, v0, Lcom/kwad/components/ad/nativead/d$3;->pF:[I

    .line 173
    .line 174
    aget v5, v5, v2

    .line 175
    .line 176
    int-to-float v5, v5

    .line 177
    sub-float/2addr v4, v5

    .line 178
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    .line 179
    .line 180
    .line 181
    move-result v4

    .line 182
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    .line 183
    .line 184
    .line 185
    move-result v5

    .line 186
    iget-object v6, v0, Lcom/kwad/components/ad/nativead/d$3;->pF:[I

    .line 187
    .line 188
    aget v3, v6, v3

    .line 189
    .line 190
    int-to-float v3, v3

    .line 191
    sub-float/2addr v5, v3

    .line 192
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    .line 193
    .line 194
    .line 195
    move-result v3

    .line 196
    invoke-virtual {v1, v4, v3}, Lcom/kwad/sdk/utils/al$a;->j(FF)V

    .line 197
    .line 198
    .line 199
    :cond_5
    :goto_0
    return v2
.end method
