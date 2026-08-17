.class public final synthetic Lcom/fl/saas/adx/base/base/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/fl/saas/adx/base/base/BaseAPI;

.field public final synthetic c:Lcom/fl/saas/adx/base/exception/FLError;


# direct methods
.method public synthetic constructor <init>(Lcom/fl/saas/adx/base/base/BaseAPI;Lcom/fl/saas/adx/base/exception/FLError;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fl/saas/adx/base/base/a;->b:Lcom/fl/saas/adx/base/base/BaseAPI;

    iput-object p2, p0, Lcom/fl/saas/adx/base/base/a;->c:Lcom/fl/saas/adx/base/exception/FLError;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/fl/saas/adx/base/base/a;->b:Lcom/fl/saas/adx/base/base/BaseAPI;

    iget-object v1, p0, Lcom/fl/saas/adx/base/base/a;->c:Lcom/fl/saas/adx/base/exception/FLError;

    invoke-static {v0, v1}, Lcom/fl/saas/adx/base/base/BaseAPI;->c(Lcom/fl/saas/adx/base/base/BaseAPI;Lcom/fl/saas/adx/base/exception/FLError;)V

    return-void
.end method
