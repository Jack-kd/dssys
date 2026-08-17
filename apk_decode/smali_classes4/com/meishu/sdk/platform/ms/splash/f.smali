.class public Lcom/meishu/sdk/platform/ms/splash/f;
.super Lcom/meishu/sdk/core/safe/l;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/ms/splash/f;->a:Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/meishu/sdk/core/safe/l;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public safeRun()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/splash/f;->a:Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->g:Ljava/util/List;

    .line 4
    .line 5
    if-eqz v0, :cond_3

    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-lez v0, :cond_3

    .line 12
    .line 13
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/splash/f;->a:Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;

    .line 14
    .line 15
    iget-object v0, v0, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->g:Ljava/util/List;

    .line 16
    .line 17
    new-instance v1, Lcom/meishu/sdk/platform/ms/splash/f$a;

    .line 18
    .line 19
    invoke-direct {v1, p0}, Lcom/meishu/sdk/platform/ms/splash/f$a;-><init>(Lcom/meishu/sdk/platform/ms/splash/f;)V

    .line 20
    .line 21
    .line 22
    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 23
    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    :goto_0
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/splash/f;->a:Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;

    .line 27
    .line 28
    iget-object v1, v1, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->g:Ljava/util/List;

    .line 29
    .line 30
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-ge v0, v1, :cond_2

    .line 35
    .line 36
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/splash/f;->a:Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;

    .line 37
    .line 38
    iget-object v1, v1, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->g:Ljava/util/List;

    .line 39
    .line 40
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    check-cast v1, Lcom/meishu/sdk/platform/ms/splash/c;

    .line 45
    .line 46
    if-eqz v1, :cond_0

    .line 47
    .line 48
    iget-boolean v2, v1, Lcom/meishu/sdk/platform/ms/splash/c;->g:Z

    .line 49
    .line 50
    if-eqz v2, :cond_0

    .line 51
    .line 52
    const/4 v2, 0x1

    .line 53
    iput v2, v1, Lcom/meishu/sdk/platform/ms/splash/c;->h:I

    .line 54
    .line 55
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/splash/f;->a:Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;

    .line 56
    .line 57
    invoke-static {v1, v2}, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->a(Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;Z)Z

    .line 58
    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_0
    if-eqz v1, :cond_1

    .line 62
    .line 63
    const/4 v2, 0x2

    .line 64
    iput v2, v1, Lcom/meishu/sdk/platform/ms/splash/c;->h:I

    .line 65
    .line 66
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_2
    return-void

    .line 70
    :cond_3
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/splash/f;->a:Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;

    .line 71
    .line 72
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->a()V

    .line 73
    .line 74
    .line 75
    return-void
.end method
