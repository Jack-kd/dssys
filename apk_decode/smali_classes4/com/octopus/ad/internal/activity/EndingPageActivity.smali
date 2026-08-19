.class public Lcom/octopus/ad/internal/activity/EndingPageActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    sget p1, Lcom/octopus/ad/R$layout;->oct_activity_ending_page:I

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 7
    .line 8
    .line 9
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    const/4 v0, -0x1

    .line 18
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 19
    .line 20
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v1, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    const-string v1, "bundleData"

    .line 34
    .line 35
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    if-eqz p1, :cond_0

    .line 40
    .line 41
    const-string v1, "mapData"

    .line 42
    .line 43
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    check-cast p1, Ljava/util/Map;

    .line 48
    .line 49
    if-eqz p1, :cond_0

    .line 50
    .line 51
    const-string v1, "icon"

    .line 52
    .line 53
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    check-cast v1, Ljava/lang/String;

    .line 58
    .line 59
    const-string v2, "title"

    .line 60
    .line 61
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    check-cast v2, Ljava/lang/String;

    .line 66
    .line 67
    const-string v3, "description"

    .line 68
    .line 69
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    check-cast p1, Ljava/lang/String;

    .line 74
    .line 75
    sget v3, Lcom/octopus/ad/R$id;->ad_close:I

    .line 76
    .line 77
    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    check-cast v3, Landroid/widget/ImageView;

    .line 82
    .line 83
    sget v4, Lcom/octopus/ad/R$id;->iv_app_icon:I

    .line 84
    .line 85
    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 86
    .line 87
    .line 88
    move-result-object v4

    .line 89
    check-cast v4, Landroid/widget/ImageView;

    .line 90
    .line 91
    sget v5, Lcom/octopus/ad/R$id;->iv_click:I

    .line 92
    .line 93
    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 94
    .line 95
    .line 96
    move-result-object v5

    .line 97
    check-cast v5, Landroid/widget/ImageView;

    .line 98
    .line 99
    sget v6, Lcom/octopus/ad/R$id;->ad_feedback:I

    .line 100
    .line 101
    invoke-virtual {p0, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 102
    .line 103
    .line 104
    move-result-object v6

    .line 105
    check-cast v6, Landroid/widget/TextView;

    .line 106
    .line 107
    sget v7, Lcom/octopus/ad/R$id;->tv_ad_title:I

    .line 108
    .line 109
    invoke-virtual {p0, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 110
    .line 111
    .line 112
    move-result-object v7

    .line 113
    check-cast v7, Landroid/widget/TextView;

    .line 114
    .line 115
    sget v8, Lcom/octopus/ad/R$id;->tv_ad_description:I

    .line 116
    .line 117
    invoke-virtual {p0, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 118
    .line 119
    .line 120
    move-result-object v8

    .line 121
    check-cast v8, Landroid/widget/TextView;

    .line 122
    .line 123
    sget v9, Lcom/octopus/ad/R$id;->tv_button:I

    .line 124
    .line 125
    invoke-virtual {p0, v9}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 126
    .line 127
    .line 128
    move-result-object v9

    .line 129
    check-cast v9, Landroid/widget/TextView;

    .line 130
    .line 131
    invoke-static {p0}, Lcom/octopus/ad/internal/utilities/ImageManager;->with(Landroid/content/Context;)Lcom/octopus/ad/internal/utilities/ImageManager;

    .line 132
    .line 133
    .line 134
    move-result-object v10

    .line 135
    invoke-virtual {v10, v1}, Lcom/octopus/ad/internal/utilities/ImageManager;->load(Ljava/lang/String;)Lcom/octopus/ad/internal/utilities/ImageManager$RequestCreatorRunnble;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    invoke-virtual {v1, v4}, Lcom/octopus/ad/internal/utilities/ImageManager$RequestCreatorRunnble;->into(Landroid/widget/ImageView;)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v8, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    .line 147
    .line 148
    new-instance p1, Landroid/view/animation/AlphaAnimation;

    .line 149
    .line 150
    const/high16 v1, 0x3f800000    # 1.0f

    .line 151
    .line 152
    const/4 v2, 0x0

    .line 153
    invoke-direct {p1, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 154
    .line 155
    .line 156
    const-wide/16 v1, 0x12c

    .line 157
    .line 158
    invoke-virtual {p1, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 162
    .line 163
    .line 164
    const/4 v0, 0x2

    .line 165
    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v5, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 169
    .line 170
    .line 171
    new-instance p1, Lcom/octopus/ad/internal/activity/EndingPageActivity$1;

    .line 172
    .line 173
    invoke-direct {p1, p0}, Lcom/octopus/ad/internal/activity/EndingPageActivity$1;-><init>(Lcom/octopus/ad/internal/activity/EndingPageActivity;)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {v6, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 177
    .line 178
    .line 179
    new-instance p1, Lcom/octopus/ad/internal/activity/EndingPageActivity$2;

    .line 180
    .line 181
    invoke-direct {p1, p0}, Lcom/octopus/ad/internal/activity/EndingPageActivity$2;-><init>(Lcom/octopus/ad/internal/activity/EndingPageActivity;)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {v3, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    .line 186
    .line 187
    new-instance p1, Lcom/octopus/ad/internal/activity/EndingPageActivity$3;

    .line 188
    .line 189
    invoke-direct {p1, p0}, Lcom/octopus/ad/internal/activity/EndingPageActivity$3;-><init>(Lcom/octopus/ad/internal/activity/EndingPageActivity;)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v9, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    .line 194
    .line 195
    return-void

    .line 196
    :catch_0
    move-exception p1

    .line 197
    goto :goto_0

    .line 198
    :cond_0
    return-void

    .line 199
    :goto_0
    const-string v0, "OctopusAd"

    .line 200
    .line 201
    const-string v1, "An Exception Caught"

    .line 202
    .line 203
    invoke-static {v0, v1, p1}, Lcom/octopus/ad/d/b/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 204
    .line 205
    .line 206
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 2
    .line 3
    .line 4
    return-void
.end method
