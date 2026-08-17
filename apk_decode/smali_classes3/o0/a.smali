.class public final synthetic Lo0/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fl/saas/B;


# instance fields
.field public final synthetic a:Lcom/fl/saas/adx/base/exception/FLError;


# direct methods
.method public synthetic constructor <init>(Lcom/fl/saas/adx/base/exception/FLError;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo0/a;->a:Lcom/fl/saas/adx/base/exception/FLError;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lo0/a;->a:Lcom/fl/saas/adx/base/exception/FLError;

    check-cast p1, Lcom/fl/saas/adx/base/interfaces/AdViewListener;

    invoke-static {v0, p1}, Lcom/fl/saas/adx/base/manager/manager/BuilderLoadManager;->a(Lcom/fl/saas/adx/base/exception/FLError;Lcom/fl/saas/adx/base/interfaces/AdViewListener;)V

    return-void
.end method
