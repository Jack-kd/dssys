.class public final synthetic LU0/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/meishu/sdk/core/utils/b$a;


# instance fields
.field public final synthetic a:Lcom/meishu/sdk/platform/ms/recycler/l;


# direct methods
.method public synthetic constructor <init>(Lcom/meishu/sdk/platform/ms/recycler/l;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LU0/c;->a:Lcom/meishu/sdk/platform/ms/recycler/l;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, LU0/c;->a:Lcom/meishu/sdk/platform/ms/recycler/l;

    check-cast p1, Ljava/lang/Boolean;

    check-cast p2, Ljava/lang/Boolean;

    invoke-static {v0, p1, p2}, Lcom/meishu/sdk/platform/ms/recycler/l;->b(Lcom/meishu/sdk/platform/ms/recycler/l;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    return-void
.end method
