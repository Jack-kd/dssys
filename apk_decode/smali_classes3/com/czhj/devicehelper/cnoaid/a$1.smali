.class Lcom/czhj/devicehelper/cnoaid/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/czhj/devicehelper/cnoaid/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/czhj/devicehelper/cnoaid/a;->b(Landroid/app/Application;ZLcom/czhj/devicehelper/cnoaid/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Application;

.field final synthetic b:Z

.field final synthetic c:Lcom/czhj/devicehelper/cnoaid/e;


# direct methods
.method public constructor <init>(Landroid/app/Application;ZLcom/czhj/devicehelper/cnoaid/e;)V
    .locals 0

    iput-object p1, p0, Lcom/czhj/devicehelper/cnoaid/a$1;->a:Landroid/app/Application;

    iput-boolean p2, p0, Lcom/czhj/devicehelper/cnoaid/a$1;->b:Z

    iput-object p3, p0, Lcom/czhj/devicehelper/cnoaid/a$1;->c:Lcom/czhj/devicehelper/cnoaid/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/czhj/devicehelper/cnoaid/a$1;->a:Landroid/app/Application;

    iget-boolean v1, p0, Lcom/czhj/devicehelper/cnoaid/a$1;->b:Z

    iget-object v2, p0, Lcom/czhj/devicehelper/cnoaid/a$1;->c:Lcom/czhj/devicehelper/cnoaid/e;

    invoke-static {p1, v0, v1, v2}, Lcom/czhj/devicehelper/cnoaid/a;->a(Ljava/lang/Exception;Landroid/app/Application;ZLcom/czhj/devicehelper/cnoaid/e;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p1, Lcom/czhj/devicehelper/cnoaid/f;

    const-string v0, "OAID is empty"

    invoke-direct {p1, v0}, Lcom/czhj/devicehelper/cnoaid/f;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/czhj/devicehelper/cnoaid/a$1;->a(Ljava/lang/Exception;)V

    return-void

    :cond_0
    sget-object v0, Lcom/czhj/devicehelper/cnoaid/a$a;->a:Lcom/czhj/devicehelper/cnoaid/a;

    invoke-static {v0, p1}, Lcom/czhj/devicehelper/cnoaid/a;->a(Lcom/czhj/devicehelper/cnoaid/a;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/czhj/devicehelper/cnoaid/a;->b(Lcom/czhj/devicehelper/cnoaid/a;Ljava/lang/String;)Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Client id is OAID/AAID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/czhj/devicehelper/cnoaid/g;->a(Ljava/lang/Object;)V

    return-void
.end method
