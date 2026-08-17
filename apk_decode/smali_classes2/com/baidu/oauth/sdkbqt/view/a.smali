.class public Lcom/baidu/oauth/sdkbqt/view/a;
.super Landroid/app/Activity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/oauth/sdkbqt/view/a$a;
    }
.end annotation


# instance fields
.field public b:Landroid/view/View;

.field public c:Landroid/widget/TextView;

.field public d:Lcom/baidu/oauth/sdkbqt/auth/i;

.field public e:Lcom/baidu/oauth/sdkbqt/auth/a;


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

.method public static synthetic a(Lcom/baidu/oauth/sdkbqt/view/a;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/baidu/oauth/sdkbqt/view/a;->c:Landroid/widget/TextView;

    .line 2
    .line 3
    return-object p0
.end method

.method private c()V
    .locals 4

    .line 1
    const-string v0, "layout_inflater"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/view/LayoutInflater;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/baidu/oauth/sdkbqt/view/a;->e:Lcom/baidu/oauth/sdkbqt/auth/a;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/baidu/oauth/sdkbqt/auth/a;->c()Lcom/baidu/oauth/sdkbqt/auth/a$a;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    iget-object v1, p0, Lcom/baidu/oauth/sdkbqt/view/a;->e:Lcom/baidu/oauth/sdkbqt/auth/a;

    .line 20
    .line 21
    invoke-virtual {v1}, Lcom/baidu/oauth/sdkbqt/auth/a;->c()Lcom/baidu/oauth/sdkbqt/auth/a$a;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    const-string v2, "layout_bd_oauth_sdk_loading_timeout"

    .line 26
    .line 27
    invoke-interface {v1, v2}, Lcom/baidu/oauth/sdkbqt/auth/a$a;->oauthResID(Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    iget-object v2, p0, Lcom/baidu/oauth/sdkbqt/view/a;->e:Lcom/baidu/oauth/sdkbqt/auth/a;

    .line 32
    .line 33
    invoke-virtual {v2}, Lcom/baidu/oauth/sdkbqt/auth/a;->c()Lcom/baidu/oauth/sdkbqt/auth/a$a;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    const-string v3, "btn_retry"

    .line 38
    .line 39
    invoke-interface {v2, v3}, Lcom/baidu/oauth/sdkbqt/auth/a$a;->oauthResID(Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    sget v1, Lcom/baidu/oauth/sdkbqt/R$layout;->layout_bd_oauth_sdk_loading_timeout:I

    .line 45
    .line 46
    sget v2, Lcom/baidu/oauth/sdkbqt/R$id;->btn_retry:I

    .line 47
    .line 48
    :goto_0
    const/4 v3, 0x0

    .line 49
    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    new-instance v2, Lt/d;

    .line 58
    .line 59
    invoke-direct {v2, p0, v0}, Lt/d;-><init>(Lcom/baidu/oauth/sdkbqt/view/a;Landroid/view/View;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    .line 64
    .line 65
    iget-object v1, p0, Lcom/baidu/oauth/sdkbqt/view/a;->d:Lcom/baidu/oauth/sdkbqt/auth/i;

    .line 66
    .line 67
    invoke-virtual {v1, v0}, Lcom/baidu/oauth/sdkbqt/auth/i;->r(Landroid/view/View;)V

    .line 68
    .line 69
    .line 70
    return-void
.end method

.method private d()V
    .locals 5

    .line 1
    :try_start_0
    new-instance v0, Landroid/widget/ProgressBar;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const v2, 0x1010078

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, p0, v1, v2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 8
    .line 9
    .line 10
    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    .line 11
    .line 12
    const/high16 v2, 0x40000000    # 2.0f

    .line 13
    .line 14
    invoke-static {p0, v2}, Lo/h;->a(Landroid/content/Context;F)I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    const/4 v3, 0x0

    .line 19
    const/4 v4, -0x1

    .line 20
    invoke-direct {v1, v4, v2, v3, v3}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Lcom/baidu/oauth/sdkbqt/view/a;->d:Lcom/baidu/oauth/sdkbqt/auth/i;

    .line 27
    .line 28
    invoke-virtual {v1, v0}, Lcom/baidu/oauth/sdkbqt/auth/i;->f(Landroid/widget/ProgressBar;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :catchall_0
    move-exception v0

    .line 33
    invoke-static {v0}, Lo/d;->c(Ljava/lang/Throwable;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method


# virtual methods
.method public final b()V
    .locals 4

    .line 1
    const-string v0, "layout_inflater"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/view/LayoutInflater;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/baidu/oauth/sdkbqt/view/a;->e:Lcom/baidu/oauth/sdkbqt/auth/a;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/baidu/oauth/sdkbqt/auth/a;->c()Lcom/baidu/oauth/sdkbqt/auth/a$a;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    iget-object v1, p0, Lcom/baidu/oauth/sdkbqt/view/a;->e:Lcom/baidu/oauth/sdkbqt/auth/a;

    .line 20
    .line 21
    invoke-virtual {v1}, Lcom/baidu/oauth/sdkbqt/auth/a;->c()Lcom/baidu/oauth/sdkbqt/auth/a$a;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    const-string v2, "layout_bd_oauth_sdk_network_unavailable"

    .line 26
    .line 27
    invoke-interface {v1, v2}, Lcom/baidu/oauth/sdkbqt/auth/a$a;->oauthResID(Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    iget-object v2, p0, Lcom/baidu/oauth/sdkbqt/view/a;->e:Lcom/baidu/oauth/sdkbqt/auth/a;

    .line 32
    .line 33
    invoke-virtual {v2}, Lcom/baidu/oauth/sdkbqt/auth/a;->c()Lcom/baidu/oauth/sdkbqt/auth/a$a;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    const-string v3, "btn_network_settings"

    .line 38
    .line 39
    invoke-interface {v2, v3}, Lcom/baidu/oauth/sdkbqt/auth/a$a;->oauthResID(Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    sget v1, Lcom/baidu/oauth/sdkbqt/R$layout;->layout_bd_oauth_sdk_network_unavailable:I

    .line 45
    .line 46
    sget v2, Lcom/baidu/oauth/sdkbqt/R$id;->btn_network_settings:I

    .line 47
    .line 48
    :goto_0
    const/4 v3, 0x0

    .line 49
    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    new-instance v1, Lt/c;

    .line 54
    .line 55
    invoke-direct {v1, p0}, Lt/c;-><init>(Lcom/baidu/oauth/sdkbqt/view/a;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    .line 64
    .line 65
    iget-object v1, p0, Lcom/baidu/oauth/sdkbqt/view/a;->d:Lcom/baidu/oauth/sdkbqt/auth/i;

    .line 66
    .line 67
    invoke-virtual {v1, v0}, Lcom/baidu/oauth/sdkbqt/auth/i;->e(Landroid/view/View;)V

    .line 68
    .line 69
    .line 70
    return-void
.end method

.method public e()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/oauth/sdkbqt/view/a;->c:Landroid/widget/TextView;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public g()V
    .locals 4

    .line 1
    new-instance v0, Lcom/baidu/oauth/sdkbqt/auth/i;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/baidu/oauth/sdkbqt/auth/i;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/baidu/oauth/sdkbqt/view/a;->d:Lcom/baidu/oauth/sdkbqt/auth/i;

    .line 7
    .line 8
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 9
    .line 10
    const/4 v1, -0x1

    .line 11
    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 12
    .line 13
    .line 14
    iget-object v1, p0, Lcom/baidu/oauth/sdkbqt/view/a;->d:Lcom/baidu/oauth/sdkbqt/auth/i;

    .line 15
    .line 16
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 17
    .line 18
    .line 19
    invoke-static {}, Lcom/baidu/oauth/sdkbqt/auth/b;->b()Lcom/baidu/oauth/sdkbqt/auth/a;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iput-object v0, p0, Lcom/baidu/oauth/sdkbqt/view/a;->e:Lcom/baidu/oauth/sdkbqt/auth/a;

    .line 24
    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/baidu/oauth/sdkbqt/auth/a;->c()Lcom/baidu/oauth/sdkbqt/auth/a$a;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    iget-object v0, p0, Lcom/baidu/oauth/sdkbqt/view/a;->e:Lcom/baidu/oauth/sdkbqt/auth/a;

    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/baidu/oauth/sdkbqt/auth/a;->c()Lcom/baidu/oauth/sdkbqt/auth/a$a;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    const-string v1, "oauth_title_back"

    .line 40
    .line 41
    invoke-interface {v0, v1}, Lcom/baidu/oauth/sdkbqt/auth/a$a;->oauthResID(Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    iget-object v1, p0, Lcom/baidu/oauth/sdkbqt/view/a;->e:Lcom/baidu/oauth/sdkbqt/auth/a;

    .line 46
    .line 47
    invoke-virtual {v1}, Lcom/baidu/oauth/sdkbqt/auth/a;->c()Lcom/baidu/oauth/sdkbqt/auth/a$a;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    const-string v2, "oauth_title"

    .line 52
    .line 53
    invoke-interface {v1, v2}, Lcom/baidu/oauth/sdkbqt/auth/a$a;->oauthResID(Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    iget-object v2, p0, Lcom/baidu/oauth/sdkbqt/view/a;->e:Lcom/baidu/oauth/sdkbqt/auth/a;

    .line 58
    .line 59
    invoke-virtual {v2}, Lcom/baidu/oauth/sdkbqt/auth/a;->c()Lcom/baidu/oauth/sdkbqt/auth/a$a;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    const-string v3, "oauth_webview_container"

    .line 64
    .line 65
    invoke-interface {v2, v3}, Lcom/baidu/oauth/sdkbqt/auth/a$a;->oauthResID(Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    goto :goto_0

    .line 70
    :cond_0
    sget v0, Lcom/baidu/oauth/sdkbqt/R$id;->oauth_title_back:I

    .line 71
    .line 72
    sget v1, Lcom/baidu/oauth/sdkbqt/R$id;->oauth_title:I

    .line 73
    .line 74
    sget v2, Lcom/baidu/oauth/sdkbqt/R$id;->oauth_webview_container:I

    .line 75
    .line 76
    :goto_0
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    iput-object v0, p0, Lcom/baidu/oauth/sdkbqt/view/a;->b:Landroid/view/View;

    .line 81
    .line 82
    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    check-cast v0, Landroid/widget/TextView;

    .line 87
    .line 88
    iput-object v0, p0, Lcom/baidu/oauth/sdkbqt/view/a;->c:Landroid/widget/TextView;

    .line 89
    .line 90
    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    check-cast v0, Landroid/widget/LinearLayout;

    .line 95
    .line 96
    if-eqz v0, :cond_1

    .line 97
    .line 98
    iget-object v1, p0, Lcom/baidu/oauth/sdkbqt/view/a;->d:Lcom/baidu/oauth/sdkbqt/auth/i;

    .line 99
    .line 100
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 101
    .line 102
    .line 103
    :cond_1
    iget-object v0, p0, Lcom/baidu/oauth/sdkbqt/view/a;->b:Landroid/view/View;

    .line 104
    .line 105
    new-instance v1, Lcom/baidu/oauth/sdkbqt/view/a$a;

    .line 106
    .line 107
    const/4 v2, 0x0

    .line 108
    invoke-direct {v1, p0, v2}, Lcom/baidu/oauth/sdkbqt/view/a$a;-><init>(Lcom/baidu/oauth/sdkbqt/view/a;Lt/a;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p0}, Lcom/baidu/oauth/sdkbqt/view/a;->b()V

    .line 115
    .line 116
    .line 117
    invoke-direct {p0}, Lcom/baidu/oauth/sdkbqt/view/a;->c()V

    .line 118
    .line 119
    .line 120
    invoke-direct {p0}, Lcom/baidu/oauth/sdkbqt/view/a;->d()V

    .line 121
    .line 122
    .line 123
    iget-object v0, p0, Lcom/baidu/oauth/sdkbqt/view/a;->d:Lcom/baidu/oauth/sdkbqt/auth/i;

    .line 124
    .line 125
    new-instance v1, Lt/a;

    .line 126
    .line 127
    invoke-direct {v1, p0}, Lt/a;-><init>(Lcom/baidu/oauth/sdkbqt/view/a;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v0, v1}, Lcom/baidu/oauth/sdkbqt/auth/i;->j(Lcom/baidu/oauth/sdkbqt/auth/i$i;)V

    .line 131
    .line 132
    .line 133
    iget-object v0, p0, Lcom/baidu/oauth/sdkbqt/view/a;->d:Lcom/baidu/oauth/sdkbqt/auth/i;

    .line 134
    .line 135
    new-instance v1, Lt/b;

    .line 136
    .line 137
    invoke-direct {v1, p0}, Lt/b;-><init>(Lcom/baidu/oauth/sdkbqt/view/a;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v0, v1}, Lcom/baidu/oauth/sdkbqt/auth/i;->i(Lcom/baidu/oauth/sdkbqt/auth/i$f;)V

    .line 141
    .line 142
    .line 143
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/baidu/oauth/sdkbqt/view/a;->e()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/baidu/oauth/sdkbqt/view/a;->d:Lcom/baidu/oauth/sdkbqt/auth/i;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/baidu/oauth/sdkbqt/auth/i;->destroy()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/baidu/oauth/sdkbqt/view/a;->d:Lcom/baidu/oauth/sdkbqt/auth/i;

    .line 5
    .line 6
    sget-object v1, Lcom/baidu/oauth/sdkbqt/auth/i$b;->b:Lcom/baidu/oauth/sdkbqt/auth/i$b;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/baidu/oauth/sdkbqt/auth/i;->g(Lcom/baidu/oauth/sdkbqt/auth/i$b;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/baidu/oauth/sdkbqt/view/a;->d:Lcom/baidu/oauth/sdkbqt/auth/i;

    .line 5
    .line 6
    sget-object v1, Lcom/baidu/oauth/sdkbqt/auth/i$b;->a:Lcom/baidu/oauth/sdkbqt/auth/i$b;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/baidu/oauth/sdkbqt/auth/i;->g(Lcom/baidu/oauth/sdkbqt/auth/i$b;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
