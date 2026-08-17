.class public Lcom/meishu/sdk/meishu_ad/lifecycle/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Landroid/app/Activity;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-class v0, Lcom/meishu/sdk/meishu_ad/lifecycle/c;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lcom/meishu/sdk/meishu_ad/lifecycle/c;->a:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public a(Lcom/meishu/sdk/meishu_ad/lifecycle/d;)V
    .locals 4

    .line 1
    const-string v0, "LifecycleFragment"

    .line 2
    .line 3
    const-string v1, "LifecycleFragment_V4"

    .line 4
    .line 5
    :try_start_0
    iget-object v2, p0, Lcom/meishu/sdk/meishu_ad/lifecycle/c;->b:Landroid/app/Activity;

    .line 6
    .line 7
    if-eqz v2, :cond_4

    .line 8
    .line 9
    instance-of v3, v2, Landroidx/fragment/app/FragmentActivity;

    .line 10
    .line 11
    if-eqz v3, :cond_1

    .line 12
    .line 13
    check-cast v2, Landroidx/fragment/app/FragmentActivity;

    .line 14
    .line 15
    sget v0, Lcom/meishu/sdk/meishu_ad/lifecycle/b;->b:I

    .line 16
    .line 17
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    check-cast v3, Lcom/meishu/sdk/meishu_ad/lifecycle/b;

    .line 26
    .line 27
    if-nez v3, :cond_0

    .line 28
    .line 29
    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-nez v2, :cond_0

    .line 34
    .line 35
    new-instance v3, Lcom/meishu/sdk/meishu_ad/lifecycle/b;

    .line 36
    .line 37
    invoke-direct {v3}, Lcom/meishu/sdk/meishu_ad/lifecycle/b;-><init>()V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {v0, v3, v1}, Landroidx/fragment/app/FragmentTransaction;->add(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :catch_0
    move-exception p1

    .line 53
    goto :goto_1

    .line 54
    :cond_0
    :goto_0
    if-eqz v3, :cond_3

    .line 55
    .line 56
    iput-object p1, v3, Lcom/meishu/sdk/meishu_ad/lifecycle/b;->a:Lcom/meishu/sdk/meishu_ad/lifecycle/d;

    .line 57
    .line 58
    return-void

    .line 59
    :cond_1
    sget v1, Lcom/meishu/sdk/meishu_ad/lifecycle/a;->b:I

    .line 60
    .line 61
    invoke-virtual {v2}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-virtual {v1, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    check-cast v3, Lcom/meishu/sdk/meishu_ad/lifecycle/a;

    .line 70
    .line 71
    if-nez v3, :cond_2

    .line 72
    .line 73
    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    .line 74
    .line 75
    .line 76
    move-result v2

    .line 77
    if-nez v2, :cond_2

    .line 78
    .line 79
    new-instance v3, Lcom/meishu/sdk/meishu_ad/lifecycle/a;

    .line 80
    .line 81
    invoke-direct {v3}, Lcom/meishu/sdk/meishu_ad/lifecycle/a;-><init>()V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    invoke-virtual {v1, v3, v0}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 93
    .line 94
    .line 95
    :cond_2
    if-eqz v3, :cond_3

    .line 96
    .line 97
    iput-object p1, v3, Lcom/meishu/sdk/meishu_ad/lifecycle/a;->a:Lcom/meishu/sdk/meishu_ad/lifecycle/d;

    .line 98
    .line 99
    :cond_3
    return-void

    .line 100
    :cond_4
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/lifecycle/c;->a:Ljava/lang/String;

    .line 101
    .line 102
    const-string v0, "setLifecycleListener: "

    .line 103
    .line 104
    new-instance v1, Ljava/lang/Exception;

    .line 105
    .line 106
    const-string v2, "View Context\u975eActivity"

    .line 107
    .line 108
    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    invoke-static {p1, v0, v1}, Lcom/meishu/sdk/core/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    .line 113
    .line 114
    return-void

    .line 115
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 116
    .line 117
    .line 118
    return-void
.end method
