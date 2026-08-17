.class public final synthetic Lcom/sigmob/sdk/base/utils/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field public final synthetic b:Lcom/sigmob/sdk/base/utils/a;


# direct methods
.method public synthetic constructor <init>(Lcom/sigmob/sdk/base/utils/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sigmob/sdk/base/utils/z;->b:Lcom/sigmob/sdk/base/utils/a;

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sigmob/sdk/base/utils/z;->b:Lcom/sigmob/sdk/base/utils/a;

    invoke-static {v0}, Lcom/sigmob/sdk/base/utils/a;->a(Lcom/sigmob/sdk/base/utils/a;)V

    return-void
.end method
