SELECT colors.color, shapes.shape
FROM colors
JOIN shapes
ON colors.id = shapes.color_id; 