.class public final synthetic Lcom/beizi/fusion/Z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/beizi/fusion/zm;

.field public final synthetic c:Landroid/widget/EditText;


# direct methods
.method public synthetic constructor <init>(Lcom/beizi/fusion/zm;Landroid/widget/EditText;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/beizi/fusion/Z;->b:Lcom/beizi/fusion/zm;

    iput-object p2, p0, Lcom/beizi/fusion/Z;->c:Landroid/widget/EditText;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/Z;->b:Lcom/beizi/fusion/zm;

    iget-object v1, p0, Lcom/beizi/fusion/Z;->c:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lcom/beizi/fusion/zm;->c(Lcom/beizi/fusion/zm;Landroid/widget/EditText;)V

    return-void
.end method
