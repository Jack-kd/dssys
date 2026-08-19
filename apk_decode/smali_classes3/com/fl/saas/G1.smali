.class public final synthetic Lcom/fl/saas/G1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/fl/saas/Y;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lcom/fl/saas/S;


# direct methods
.method public synthetic constructor <init>(Lcom/fl/saas/Y;Ljava/lang/String;Lcom/fl/saas/S;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fl/saas/G1;->b:Lcom/fl/saas/Y;

    iput-object p2, p0, Lcom/fl/saas/G1;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/fl/saas/G1;->d:Lcom/fl/saas/S;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/fl/saas/G1;->b:Lcom/fl/saas/Y;

    iget-object v1, p0, Lcom/fl/saas/G1;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/fl/saas/G1;->d:Lcom/fl/saas/S;

    invoke-static {v0, v1, v2}, Lcom/fl/saas/Y;->d(Lcom/fl/saas/Y;Ljava/lang/String;Lcom/fl/saas/S;)V

    return-void
.end method
