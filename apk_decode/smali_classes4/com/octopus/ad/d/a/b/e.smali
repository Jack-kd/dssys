.class public Lcom/octopus/ad/d/a/b/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/octopus/ad/d/a/d;


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/octopus/ad/d/a/b/e;->a:Landroid/content/Context;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Lcom/octopus/ad/d/a/c;)V
    .locals 3

    .line 4
    iget-object v0, p0, Lcom/octopus/ad/d/a/b/e;->a:Landroid/content/Context;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.service.action.msa"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    const-string v1, "com.android.creator"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 7
    iget-object v1, p0, Lcom/octopus/ad/d/a/b/e;->a:Landroid/content/Context;

    new-instance v2, Lcom/octopus/ad/d/a/b/e$1;

    invoke-direct {v2, p0}, Lcom/octopus/ad/d/a/b/e$1;-><init>(Lcom/octopus/ad/d/a/b/e;)V

    invoke-static {v1, v0, p1, v2}, Lcom/octopus/ad/d/a/b/l;->a(Landroid/content/Context;Landroid/content/Intent;Lcom/octopus/ad/d/a/c;Lcom/octopus/ad/d/a/b/l$a;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/d/a/b/e;->a:Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v2, "com.android.creator"

    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1

    :catch_0
    move-exception v0

    .line 3
    invoke-static {v0}, Lcom/octopus/ad/d/a/f;->a(Ljava/lang/Object;)V

    return v1
.end method
