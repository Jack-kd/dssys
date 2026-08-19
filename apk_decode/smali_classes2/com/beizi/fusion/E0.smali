.class public final synthetic Lcom/beizi/fusion/E0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/beizi/fusion/zm$c;

.field public final synthetic c:Lcom/beizi/fusion/zm$d;

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/beizi/fusion/zm$c;Lcom/beizi/fusion/zm$d;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/beizi/fusion/E0;->b:Lcom/beizi/fusion/zm$c;

    iput-object p2, p0, Lcom/beizi/fusion/E0;->c:Lcom/beizi/fusion/zm$d;

    iput-object p3, p0, Lcom/beizi/fusion/E0;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/E0;->b:Lcom/beizi/fusion/zm$c;

    iget-object v1, p0, Lcom/beizi/fusion/E0;->c:Lcom/beizi/fusion/zm$d;

    iget-object v2, p0, Lcom/beizi/fusion/E0;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2, p1}, Lcom/beizi/fusion/zm$c;->a(Lcom/beizi/fusion/zm$c;Lcom/beizi/fusion/zm$d;Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method
