.class Lcom/czhj/devicehelper/cnoaid/impl/h$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/czhj/devicehelper/cnoaid/impl/h;->a(Lcom/czhj/devicehelper/cnoaid/c;Lcom/czhj/devicehelper/cnoaid/f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/czhj/devicehelper/cnoaid/c;

.field final synthetic b:Lcom/czhj/devicehelper/cnoaid/f;

.field final synthetic c:Lcom/czhj/devicehelper/cnoaid/impl/h;


# direct methods
.method public constructor <init>(Lcom/czhj/devicehelper/cnoaid/impl/h;Lcom/czhj/devicehelper/cnoaid/c;Lcom/czhj/devicehelper/cnoaid/f;)V
    .locals 0

    iput-object p1, p0, Lcom/czhj/devicehelper/cnoaid/impl/h$4;->c:Lcom/czhj/devicehelper/cnoaid/impl/h;

    iput-object p2, p0, Lcom/czhj/devicehelper/cnoaid/impl/h$4;->a:Lcom/czhj/devicehelper/cnoaid/c;

    iput-object p3, p0, Lcom/czhj/devicehelper/cnoaid/impl/h$4;->b:Lcom/czhj/devicehelper/cnoaid/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/czhj/devicehelper/cnoaid/impl/h$4;->a:Lcom/czhj/devicehelper/cnoaid/c;

    iget-object v1, p0, Lcom/czhj/devicehelper/cnoaid/impl/h$4;->b:Lcom/czhj/devicehelper/cnoaid/f;

    invoke-interface {v0, v1}, Lcom/czhj/devicehelper/cnoaid/c;->a(Ljava/lang/Exception;)V

    return-void
.end method
