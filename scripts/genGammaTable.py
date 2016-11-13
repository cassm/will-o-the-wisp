

## Creates a gamma-corrected lookup table
import math

def gamma(nsteps, gamma):
        gammaedUp = [math.pow(x, gamma) for x in range(nsteps)]
        return [x/max(gammaedUp) for x in gammaedUp]

def rounder(topValue, gammas):
        return [min(topValue, round(x*topValue)) for x in gammas]

if __name__ == "__main__":
        myGamma = 2.3
        steps = 1024
        output = open("gamma.h", "w")
        output.write("/* %d-step brightness table: gamma = %s */\n\n" % (steps, myGamma))
        output.write("const uint8_t gamma_table[%d] = {" % steps)
        index = 0
        for value in rounder(255, gamma(steps, myGamma)):
            output.write(" %3d," % value)
            index += 1
            if index % 16 == 0 and index != 0:
                output.write("\n")
                output.write(" "*35)

        output.write("};\n")
        output.close()

