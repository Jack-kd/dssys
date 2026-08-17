.class final Lcom/kwad/components/core/innerEc/live/slide/LiveDetailActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/components/core/innerEc/live/slide/LiveDetailActivity;->setLivePageUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic XI:Lcom/kwad/components/core/innerEc/live/slide/LiveDetailActivity;


# direct methods
.method public constructor <init>(Lcom/kwad/components/core/innerEc/live/slide/LiveDetailActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/core/innerEc/live/slide/LiveDetailActivity$1;->XI:Lcom/kwad/components/core/innerEc/live/slide/LiveDetailActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v1, v0, [I

    .line 3
    .line 4
    iget-object v2, p0, Lcom/kwad/components/core/innerEc/live/slide/LiveDetailActivity$1;->XI:Lcom/kwad/components/core/innerEc/live/slide/LiveDetailActivity;

    .line 5
    .line 6
    invoke-virtual {v2}, Lcom/kwad/sdk/api/proxy/IActivityProxy;->getActivity()Landroid/app/Activity;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    iget-object v3, p0, Lcom/kwad/components/core/innerEc/live/slide/LiveDetailActivity$1;->XI:Lcom/kwad/components/core/innerEc/live/slide/LiveDetailActivity;

    .line 11
    .line 12
    invoke-virtual {v3}, Lcom/kwad/sdk/api/proxy/IActivityProxy;->getWindow()Landroid/view/Window;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    invoke-static {v2, v3, v1}, Lcom/kwad/components/core/innerEc/live/i/c;->a(Landroid/content/Context;Landroid/view/Window;[I)Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    const/4 v3, 0x0

    .line 21
    aget v1, v1, v3

    .line 22
    .line 23
    new-instance v4, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const-string v5, "jky live page postOnUiThread isNavBarVisible: "

    .line 26
    .line 27
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    const-string v4, "LiveDetailActivity"

    .line 38
    .line 39
    invoke-static {v4, v2}, Lcom/kwad/sdk/core/d/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    iget-object v2, p0, Lcom/kwad/components/core/innerEc/live/slide/LiveDetailActivity$1;->XI:Lcom/kwad/components/core/innerEc/live/slide/LiveDetailActivity;

    .line 43
    .line 44
    const v5, 0x1020002

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2, v5}, Lcom/kwad/components/core/proxy/i;->findViewById(I)Landroid/view/View;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    new-instance v5, Landroid/graphics/Rect;

    .line 52
    .line 53
    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v2, v5}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 57
    .line 58
    .line 59
    iget-object v6, p0, Lcom/kwad/components/core/innerEc/live/slide/LiveDetailActivity$1;->XI:Lcom/kwad/components/core/innerEc/live/slide/LiveDetailActivity;

    .line 60
    .line 61
    invoke-virtual {v6}, Lcom/kwad/sdk/api/proxy/IActivityProxy;->getActivity()Landroid/app/Activity;

    .line 62
    .line 63
    .line 64
    move-result-object v6

    .line 65
    invoke-static {v6}, Lcom/kwad/sdk/c/a/a;->g(Landroid/app/Activity;)I

    .line 66
    .line 67
    .line 68
    move-result v6

    .line 69
    iget v7, v5, Landroid/graphics/Rect;->bottom:I

    .line 70
    .line 71
    if-lt v6, v7, :cond_0

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_0
    move v0, v3

    .line 75
    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    const-string v8, "jky live page postOnUiThread getWindowVisibleDisplayFrame rect: "

    .line 78
    .line 79
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    const-string v5, ", screenHeight: "

    .line 86
    .line 87
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    const-string v5, " ,needSetPadding: "

    .line 94
    .line 95
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v5

    .line 105
    invoke-static {v4, v5}, Lcom/kwad/sdk/core/d/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    invoke-static {}, Lcom/kwad/sdk/utils/bd;->Wc()Z

    .line 109
    .line 110
    .line 111
    move-result v5

    .line 112
    if-nez v5, :cond_1

    .line 113
    .line 114
    if-eqz v0, :cond_1

    .line 115
    .line 116
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/slide/LiveDetailActivity$1;->XI:Lcom/kwad/components/core/innerEc/live/slide/LiveDetailActivity;

    .line 117
    .line 118
    invoke-virtual {v0}, Lcom/kwad/sdk/api/proxy/IActivityProxy;->getActivity()Landroid/app/Activity;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    invoke-static {v0}, Lcom/kwad/sdk/c/a/a;->l(Landroid/app/Activity;)I

    .line 123
    .line 124
    .line 125
    move-result v0

    .line 126
    new-instance v5, Ljava/lang/StringBuilder;

    .line 127
    .line 128
    const-string v6, "naviBarHeight = "

    .line 129
    .line 130
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    const-string v6, ", naviBarHeightFromViewHeight: "

    .line 137
    .line 138
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v5

    .line 148
    invoke-static {v4, v5}, Lcom/kwad/sdk/core/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 152
    .line 153
    .line 154
    move-result v0

    .line 155
    invoke-virtual {v2, v3, v3, v3, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 156
    .line 157
    .line 158
    goto :goto_1

    .line 159
    :cond_1
    if-nez v0, :cond_2

    .line 160
    .line 161
    invoke-virtual {v2, v3, v3, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 162
    .line 163
    .line 164
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/slide/LiveDetailActivity$1;->XI:Lcom/kwad/components/core/innerEc/live/slide/LiveDetailActivity;

    .line 165
    .line 166
    invoke-virtual {v0}, Lcom/kwad/sdk/api/proxy/IActivityProxy;->getWindow()Landroid/view/Window;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    const/high16 v1, -0x1000000

    .line 171
    .line 172
    invoke-virtual {v0, v1}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 173
    .line 174
    .line 175
    return-void
.end method
