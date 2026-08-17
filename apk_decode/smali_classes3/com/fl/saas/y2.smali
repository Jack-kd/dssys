.class public final synthetic Lcom/fl/saas/y2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/fl/saas/o;

.field public final synthetic c:Lcom/fl/saas/adx/base/exception/FLError;


# direct methods
.method public synthetic constructor <init>(Lcom/fl/saas/o;Lcom/fl/saas/adx/base/exception/FLError;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fl/saas/y2;->b:Lcom/fl/saas/o;

    iput-object p2, p0, Lcom/fl/saas/y2;->c:Lcom/fl/saas/adx/base/exception/FLError;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/fl/saas/y2;->b:Lcom/fl/saas/o;

    iget-object v1, p0, Lcom/fl/saas/y2;->c:Lcom/fl/saas/adx/base/exception/FLError;

    invoke-static {v0, v1}, Lcom/fl/saas/o;->e(Lcom/fl/saas/o;Lcom/fl/saas/adx/base/exception/FLError;)V

    return-void
.end method
