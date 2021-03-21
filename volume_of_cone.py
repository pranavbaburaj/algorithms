import math

class Cone(object):
    def __init__(self, dimensions):
        self.result = None
        self.dimensions = self.verify_dimensions(dimensions)
        
        
    def verify_dimensions(self, dimensions):
        if len(dimensions) != 2:
            self.result = "Cone Shape Error!"
            return None
        else:
            for element in dimensions:
                if not (element > 0):
                    self.result = "Cone Shape Error!"
                    return None
            return {
                "base" : dimensions[0],
                "height" : dimensions[1]
            }
            
    def volume(self, r, h, pi=3.14):
        return round(((1 / 3) * pi * r * r * h), 1)
        
    def area(self, r, h, pi=3.14):
        return round(3.141592 * r * (r + math.sqrt(r*r + h*h)), 1)
            
    def printResults(self):

        if self.dimensions is not None:
            area = self.area(self.dimensions['base'] / 2, self.dimensions['height'])
            volume = self.volume(self.dimensions['base'] / 2, self.dimensions['height'])
            self.result = f"SA: {area} Volume: {volume}"
            
        print(self.result)
        
