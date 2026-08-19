.class Lcom/umeng/commonsdk/deeplink/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/umeng/commonsdk/deeplink/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/commonsdk/deeplink/a;->b(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/umeng/commonsdk/deeplink/a;


# direct methods
.method public constructor <init>(Lcom/umeng/commonsdk/deeplink/a;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/umeng/commonsdk/deeplink/a$1;->b:Lcom/umeng/commonsdk/deeplink/a;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/umeng/commonsdk/deeplink/a$1;->a:Landroid/content/Context;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a(ILorg/json/JSONObject;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/umeng/commonsdk/deeplink/a$1;->b:Lcom/umeng/commonsdk/deeplink/a;

    iget-object v1, p0, Lcom/umeng/commonsdk/deeplink/a$1;->a:Landroid/content/Context;

    invoke-static {v0, v1, p1, p2}, Lcom/umeng/commonsdk/deeplink/a;->a(Lcom/umeng/commonsdk/deeplink/a;Landroid/content/Context;ILorg/json/JSONObject;)V

    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 2

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "--->>> [attribution] network error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, "unknown"

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4
    const-string v0, "MobclickRT"

    invoke-static {v0, p1}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object p1, p0, Lcom/umeng/commonsdk/deeplink/a$1;->b:Lcom/umeng/commonsdk/deeplink/a;

    iget-object v0, p0, Lcom/umeng/commonsdk/deeplink/a$1;->a:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/umeng/commonsdk/deeplink/a;->a(Lcom/umeng/commonsdk/deeplink/a;Landroid/content/Context;)V

    return-void
.end method
