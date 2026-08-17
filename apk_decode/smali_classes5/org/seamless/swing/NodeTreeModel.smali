.class public Lorg/seamless/swing/NodeTreeModel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/swing/tree/TreeModel;


# instance fields
.field private rootNode:Lorg/seamless/swing/Node;

.field private selectedNode:Lorg/seamless/swing/Node;


# direct methods
.method public constructor <init>(Lorg/seamless/swing/Node;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/seamless/swing/NodeTreeModel;->rootNode:Lorg/seamless/swing/Node;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public addTreeModelListener(Ljavax/swing/event/TreeModelListener;)V
    .locals 0

    return-void
.end method

.method public getChild(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lorg/seamless/swing/Node;

    .line 2
    .line 3
    invoke-interface {p1}, Lorg/seamless/swing/Node;->getChildren()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method public getChildCount(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lorg/seamless/swing/Node;

    .line 2
    .line 3
    invoke-interface {p1}, Lorg/seamless/swing/Node;->getChildren()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1
.end method

.method public getIndexOfChild(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    if-nez p2, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    check-cast p1, Lorg/seamless/swing/Node;

    .line 7
    .line 8
    invoke-interface {p1}, Lorg/seamless/swing/Node;->getChildren()Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-interface {p1, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    return p1

    .line 17
    :cond_1
    :goto_0
    const/4 p1, -0x1

    .line 18
    return p1
.end method

.method public getRoot()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/seamless/swing/NodeTreeModel;->rootNode:Lorg/seamless/swing/Node;

    .line 2
    .line 3
    return-object v0
.end method

.method public isLeaf(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Lorg/seamless/swing/Node;

    .line 2
    .line 3
    invoke-interface {p1}, Lorg/seamless/swing/Node;->getChildren()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    return p1

    .line 15
    :cond_0
    const/4 p1, 0x0

    .line 16
    return p1
.end method

.method public removeTreeModelListener(Ljavax/swing/event/TreeModelListener;)V
    .locals 0

    return-void
.end method

.method public valueForPathChanged(Ljavax/swing/tree/TreePath;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method
