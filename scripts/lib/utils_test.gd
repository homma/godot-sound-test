
const utils = preload("res://scripts/lib/utils.gd")

# scene

static func create_3d_scene_sample():

    # root node
    var root = utils.create_node("Node3D")
    root.set_name("root")
    root.show()

    # child node
    var child = utils.create_node("Node3D")
    child.set_name("child")
    utils.add_child(root, child)

    return utils.create_scene_from_node(root, "sample 3D scene")

static func create_2d_scene_sample():

    # root node
    var root = utils.create_node("Node2D")
    root.set_name("root")
    root.show()

    # child node
    var child = utils.create_node("Node2D")
    child.set_name("child")
    utils.add_child(root, child)

    return utils.create_scene_from_node(root, "sample 2D scene")

# shapes

static func create_rectangle_sample():

    # root node
    var root = utils.create_node("Node2D")
    root.set_name("root")
    root.show()

    # rectangle
    var x = 10
    var y = 10
    var width = 30
    var height = 20
    var color1 = Color.BLUE
    var rect1 = utils.create_rectangle(x, y, width, height, color1)

    rect1.set_name("rect1")
    utils.add_child(root, rect1)

    # rectangle line
    var x1 = 10
    var y1 = 40
    var width1 = 30
    var height1 = 20
    var color2 = Color.GREEN
    var rect2 = utils.create_rectangle_lines(x1, y1, width1, height1, 3, color2)

    rect2.set_name("rect2")
    utils.add_child(root, rect2)

    return utils.create_scene_from_node(root, "sample rectangle")

static func create_triangle_sample():

    # root node
    var root = utils.create_node("Node2D")
    root.set_name("root")
    root.show()

    # triangle
    var p0 = Vector2(0, -30)
    var p1 = Vector2(-15, 30)
    var p2 = Vector2(15, 30)
    var color1 = Color.BLUE
    var tri1 = utils.create_triangle(p0, p1, p2, color1)

    tri1.set_name("tri1")
    utils.add_child(root, tri1)

    # triangle line
    var p10 = Vector2(30, -30)
    var p11 = Vector2(15, 30)
    var p12 = Vector2(45, 30)
    var color2 = Color.GREEN
    var tri2 = utils.create_triangle_lines(p10, p11, p12, 3, color2)

    tri2.set_name("tri2")
    utils.add_child(root, tri2)

    return utils.create_scene_from_node(root, "sample triangle")

static func create_circle_sample():

    # root node
    var root = utils.create_node("Node2D")
    root.set_name("root")
    root.show()

    # circle
    var x = 0
    var y = 0
    var radius = 20
    var divide = 12
    var color1 = Color.BLUE
    var circle1 = utils.create_circle(x, y, radius, divide, color1)

    circle1.set_name("circle1")
    utils.add_child(root, circle1)

    # circle line
    var x1 = 100
    var y1 = 0
    var radius1 = 20
    var divide1 = 20
    var color2 = Color.GREEN
    var circle2 = utils.create_circle_lines(x1, y1, radius1, divide1, 3, color2)

    circle2.set_name("circle2")
    utils.add_child(root, circle2)

    return utils.create_scene_from_node(root, "sample circle")

static func create_capsule_sample():

    # root node
    var root = utils.create_node("Node2D")
    root.set_name("root")
    root.show()

    # capsule
    var x1 = 0
    var y1 = 0
    var radius1 = 30
    var height1 = 100
    var color1 = Color.BLUE
    var capsule1 = utils.create_capsule(x1, y1, radius1, height1, color1)

    capsule1.set_name("capsule1")
    utils.add_child(root, capsule1)

    # capsule line
    var x2 = 100
    var y2 = 0
    var radius2 = 30
    var height2 = 100
    var thickness = 3
    var color2 = Color.GREEN
    var capsule2 = utils.create_capsule_lines(x2, y2, radius2, height2, thickness, color2)

    capsule2.set_name("capsule2")
    utils.add_child(root, capsule2)

    return utils.create_scene_from_node(root, "sample capsule")
